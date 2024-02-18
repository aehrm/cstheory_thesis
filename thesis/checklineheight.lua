local HLIST = node.id("hlist")
local GLUE = node.id("glue")
local GLYPH = node.id("glyph")
local WHAT = node.id("whatsit")



-- parsepara = function (head, c)
--     for n in node.traverse(head) do
--         if n.id == HLIST then
--             lw = n.width / 65535
--         end
--         if n.id == GLUE and n.subtype == 1 then
--             print(n.width, n.subtype)
--             glueheight = n.width / 65535
-- 
--             if n.prev then
-- 
--             prev = n.prev
--             local pdfn=node.new(WHAT, "pdf_literal")
--             pdfn.data=" 0.1 w 0 -"..glueheight.." "..lw.." 2 re q 0.9 0 0 rg f  Q"
--             pdfn.mode=0
--             pdfn.next=n
--             prev.next=pdfn
-- 
--         end
--         end
--     end
--     return head
-- end
-- luatexbase.add_to_callback("post_linebreak_filter", parsepara, "check_lineheight")



function lineparse(line)
    if lastline and lastline.id ~= WHAT then
        diff = tex.baselineskip.width-line.height-lastline.depth
        if diff < 0 then
            local lw = lastline.width
            local ld = lastline.depth
            local lh = lastline.height
            local lhw = ((lw/65536)*(72/72.27))
            local lhd = ((ld/65536)*(72/72.27))
            local lhh = ((lh/65536)*(72/72.27))
            local ltot=lhd+lhh
            local ddiff = ((diff/65536)*(72/72.27))
            local pdfn=node.new(WHAT, "pdf_literal")
            pdfn.mode=0
            if diff < tex.lineskiplimit then
                pdfn.data=" 2 w 0 0 m 0 "..(line.height/64436*72/72.27 + lhd).." l q 1 .3 .3 RG s  Q"
                pdfn.next=line.head
                line.head=pdfn
            else
                pdfn.data=" 0.1 w  0 -"..lhd.." "..lhw.. " "..(-ddiff).." re q 1 .3 .3 rg f  Q"
                pdfn.next=lastline.head
                lastline.head=pdfn
            end
        end
    end

    lastline = line
end

parsepara = function (head, c)
    for line in node.traverse(head) do
        if line.id == HLIST then
            lineparse(line)
        end
    end
    return head
end

luatexbase.add_to_callback("post_linebreak_filter", parsepara, "check_lineheight")
