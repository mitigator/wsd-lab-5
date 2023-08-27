from lxml import etree

# Load XML
xml_tree = etree.parse("Assignment4.xml")

# Load XSL
xsl_transform = etree.XSLT(etree.parse("Assignment4.xsl"))

# Apply XSLT transformation
html_tree = xsl_transform(xml_tree)


# Write transformed HTML to a file
with open("Assignment.html", "wb") as output_file:
    output_file.write(etree.tostring(html_tree, pretty_print=True))