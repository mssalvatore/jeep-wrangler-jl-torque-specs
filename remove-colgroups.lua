-- remove-colgroups.lua
-- Remove Pandoc's column width hints so HTML tables auto-size naturally.

function Table(el)
	-- Clear column widths so Pandoc doesn't emit <colgroup>
	if el.colspecs then
		for i, spec in ipairs(el.colspecs) do
			-- Set width to 0 => use default auto width
			spec[2] = 0
		end
	end

	return el
end
