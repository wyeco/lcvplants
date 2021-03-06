

#' c("\\Sexpr[results=rd,stage=build]{tools:::Rd_package_title(\"#1\")}",
#' "lcvplants")\Sexpr{tools:::Rd_package_title("lcvplants")}
#' 
#' c("\\Sexpr[results=rd,stage=build]{tools:::Rd_package_description(\"#1\")}",
#' "lcvplants")\Sexpr{tools:::Rd_package_description("lcvplants")}
#' 
#' The R-package is able to apply a text-based search of plant names on the LCVP
#' using a fuzzy match algorithm, which is the core of the searching engine.
#' The fuzzy match algorithm is applied at genus, epithet, infraspecies and
#' authority level of a plant species and it uses the 'max.distance' argument
#' from the agrep() R-function to assess the comparison between the searched
#' plant name and the closest, in terms of number of similar characters plant
#' name from the LCVP. Through the "lcvplants" R-package, the user can search
#' either for a single plant name or for a list of names.  There are no
#' limitation on the list length, but we strongly recommend the list to less
#' than 5000 names to ensure a reasonable speed of the execution. The input
#' list of plant names has to be organized as a list of names each on a
#' separated line and saved in a text (.txt) or comma-separated values (.csv)
#' file.  Following the International Code of Nomenclature for algae, fungi,
#' and plants (Shenzhen Code: https://www.iapt-taxon.org/nomen/main.php), which
#' sets the rules to describe plant taxa names, the user has to write the taxon
#' specifying the different terms separated by spaces as the following: genus,
#' epithet, infraspecies rank, infraspecies name and authorship (e.g. Draba
#' mollissima var. kusnezowii N.Busch).  The user must use no special
#' characters at the level of genus, epithet and infraspecies ranks; but
#' special character can be possible only at the authorship level. The
#' infraspecies name has to be preceded by the infraspecies rank (e.g.
#' "subsp.", "var.", "forma", "ssp.", "f.", "subvar.", "subf.").  At least the
#' taxon name has to be written with the two-term naming system, which defines
#' a species (binomial nomenclature system); the infraspecies and authorship
#' are optional for a finer search.  The only possible cases, where the
#' function accepts one single name, are when the user wants to perform the
#' search only for the genus, order or family ranks; but in these cases the
#' options 'genus_tab', 'family_tab' or 'order_tab' have to be activated (e.g.
#' genus_tab = TRUE; FALSE is default). Lastly, if the genus or the epithet
#' names are composed by two words, they have to be separated by a hyphen ("-")
#' character and never by space (e.g. Hibiscus rosa-sinensis L.; never as
#' Hibiscus rosa sinensis L.).  The proper way to submit an hybrid plant taxon
#' is using the characters '_x' in the end of the genus and epithet name (e.g.
#' Spartocytisus_x filipes Webb & Berthel., Lycopodium habereri_x House).
#' However the lcvplants R-package is able to accept other forms of submitted
#' plant names such as 'x' or 'x_' before the names both upper or lower case
#' (e.g. x Spartocytisus filipes Webb & Berthel., x_Spartocytisus filipes Webb
#' & Berthel., Lycopodium x habereri House) and change them automatically into
#' the required format. The commonly used special Unicode Character "U+00D7"
#' for indicating hybrids is not accepted. If the user wants to submit a list
#' of plant names to be searched, the user has to write the following sentence
#' on the R/RStudio console: LCVP('list', ...); the term 'list' will inform the
#' function that has been submitted a list of plant names stored in a file.
#' Then an external window will appear to search for the path where the file is
#' stored. If the user wants to submit a single taxon the user has to submit
#' the sentence as the following example: "LCVP('Payena lancifolia H.J.Lam',
#' ...)", followed by one or more options.
#' 
#' @name lcvplants-package
#' @aliases lcvplants-package lcvplants
#' @docType package
#' @author
#' c("\\Sexpr[results=rd,stage=build]{tools:::Rd_package_author(\"#1\")}",
#' "lcvplants")\Sexpr{tools:::Rd_package_author("lcvplants")}
#' 
#' Maintainer:
#' c("\\Sexpr[results=rd,stage=build]{tools:::Rd_package_maintainer(\"#1\")}",
#' "lcvplants")\Sexpr{tools:::Rd_package_maintainer("lcvplants")}
#' @seealso https://idata.idiv.de/ddm/Data/ShowData/1806
#' @references The Leipzig Catalogue of Vascular Plants (LCVP) - An improved taxonomic
#' reference list for all known vascular plants.
#' @keywords nomenclature, taxonomy, vascular plants, R-package
#' @examples
#' 
#' # To submit one single plant taxa name or a list:
#' LCVP("Hibiscus vitifolius")
#' # To submit a plant taxa name to solve some possible orthographic errors:
#' LCVP("Hibiscus vitfolius", max.distance = 1)
#' # To submit a plant taxa name to solve possible orthographic errors also at the genus level:
#' LCVP("Hibiescus vitifolius", max.distance = 1, genus_search = TRUE)
#' # To submit a plant taxon looking for all the synonym names:
#' LCVP("Hibiscus vitifolius", status = FALSE)
#' # To submit a plant taxa name looking for all infraspecies names:
#' LCVP("Hibiscus vitifolius", infraspecies_tab = TRUE)
#' # To submit a plant taxa name looking for all plant taxa names belonging to the same genus rank:
#' LCVP("Hibiscus", genus_tab = TRUE)
#' # To execute the searching process booking a fixed number of
#' # CPU cores available on the working machine:
#' LCVP("Hibiscus vitifolius", max.cores = 3)
#' # To save the result to a Comma-Separated Values (.csv) file:
#' LCVP("Hibiscus vitifolius", save = TRUE)
#' 
NULL
