TARGET_DIR="${1:-.}"


cd "$TARGET_DIR" || { echo "Error: No se pudo acceder a $TARGET_DIR"; exit 1; }

echo " Iniciando limpieza en: $(pwd) "


mkdir -p IMGS DOCS TXTS PDFS VACIOS



find . -type f \( -iname "*.jpg" -o -iname "*.png" -o -iname "*.gif" \) -exec mv {} IMGS/ \; 

find . -type f \( -iname "*.docx" -o -iname "*.odt" \) -exec mv {} DOCS/ \; 

find . -type f -name "*.txt" -exec mv {} TXTS/ \; 

find . -type f -name "*.pdf" -exec mv {} PDFS/ \; 

find . -type f -empty -exec mv {} VACIOS/ \; 


numero_imgs=$(find IMGS -type f | wc -l)
numero_docs=$(find DOCS -type f | wc -l)
numero_txts=$(find TXTS -type f | wc -l)
numero_pdfs=$(find PDFS -type f | wc -l)
numero_vacias=$(find VACIOS -type f | wc -l)

echo "Informe: Se han movido $numero_imgs imágenes, $numero_docs documentos, $numero_txts textos, $numero_pdfs PDFs y $numero_vacias archivos vacíos."


lista_vacios=$(find . -type f -empty)$

if [[ -n "$vacios_list" ]]; then
    echo "$vacios_list"
    find . -type f -empty -exec mv {} VACIOS/ \; 
    
else
    echo "No se encontraron archivos o carpetas vacíos adicionales."
fi

echo "--- Limpieza Finalizada ---"
