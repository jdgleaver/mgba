file(GLOB TRANSLATION_FILES "${QM_BASE}/*.qm")
file(WRITE ${TRANSLATION_QRC} "<RCC>\n\t<qresource prefix=\"/translations/\">\n")
foreach(TS ${TRANSLATION_FILES})
	get_filename_component(TS_BASE "${TS}" NAME)
	file(APPEND ${TRANSLATION_QRC} "\t\t<file>${TS_BASE}</file>\n")
endforeach()
file(APPEND ${TRANSLATION_QRC} "\t</qresource>\n</RCC>")
