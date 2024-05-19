#!/bin/bash

# Dimas-TI1B-20.sh

# Muhammad Irsyad Dimas Abdillah 20/2341720088 TI-1B
# UAS-Praktikum Sistem Operasi
clear

echo "======================================================"
echo "     Selamat Datang di Aplikasi ID-Backup Manager     "
echo "======================================================"
echo "=================== Dibuat Oleh ======================"
echo "          Muhammad Irsyad Dimas Abdillah             "
echo "                   2341720088                        "
echo " ================== Kelas TI-1B ======================"

function menu() {
    echo "ID-Backup Manager"
    echo "1. Pilih File/Directory untuk Dicadangkan"
    echo "2. Tentukan Lokasi Penyimpanan Cadangan"
    echo "3. Kompresi Cadangan"
    echo "4. Verifikasi Integritas Cadangan"
    echo "5. Pulihkan File/Directory dari Cadangan"
    echo "6. Buat Laporan Pencadangan"
    echo "7. Keluar"
    echo -n "Masukkan Pilihan: "
}

# Function Pilih File/Directory untuk Dicadangkan
function pilihDirektori() {
    echo -n "Masukkan path Direktori/File yang ingin dicadangkan: "
    read path
    echo -n "Masukkan pola pencarian (misalnya, *.txt): "
    read pola
    files=$(find "$path" -type f -name "$pola")
    echo "File yang dipilih:"
    echo "$files"
}

# Function Tentukan Lokasi Penyimpanan Cadangan
function tentukanLokasi() {
    echo -n "Masukkan path lokasi penyimpanan cadangan: "
    read lokasi
    mkdir -p "$lokasi"
    echo "Lokasi penyimpanan cadangan: $lokasi"
}

# Function Kompresi Cadangan
function kompresiCadangan() {
    echo "Kompresi cadangan..."
    tar_file="$lokasi/backup_$(date +%F).tar.gz"
    tar -czf "$tar_file" $files
    echo "Cadangan diperbarui dan tersimpan di $tar_file"
}

# Function Verifikasi Integritas Cadangan
function verifikasiIntegritas() {
    echo "Verifikasi integritas cadangan..."
    if[[-f "$tar_file"]]; then
        md5sum "$tar_file" > "$tar_file.md5"
        echo "Checksum untuk file cadangan: $(cat "$tar_file.md5")"
    else
        echo "File cadangan tidak ditemukan untuk di verifikasi"
    fi
}

# Function Pulihkan File/Directory dari Cadangan
function pulihkanFile() {
    echo -n "Masukkan path file cadangan (tar.gz) yang akan dipulihkan: "
    read restore_file
    echo -n "Masukkan lokasi tujuan pemulihan: "
    read restore_loc
    mkdir -p "$restore_loc"
    tar -xzf "$restore_file" -C "$restore_loc"
    echo "File telah dipulihkan ke: $restore_loc"
}

# Function Buat Laporan Pencadangan
function buatLaporan() {
    file_laporan="$lokasi/backup_report_$(date +%F).txt"
    echo "Laporan Pencadangan - $(date)" > "$file_laporan"
    echo "File yang dicadangkan:" >> "$file_laporan"
    echo "$files" >> "$file_laporan"
    echo "Lokasi Penyimpanan: $lokasi" >> "$file_laporan"
    echo "Waktu Pencadangan: $(date)" >> "$file_laporan"
    echo "Laporan pencadangan dibuat di: $file_laporan"
    cat "$file_laporan"
    
    while true; do
        menu
        read pilihan
        
        case $pilihan in
            1) pilihDirektori ;;
            2) tentukanLokasi ;;
            3) kompresiCadangan ;;
            4) verifikasiIntegritas ;;
            5) pulihkanFile ;;
            6) buatLaporan ;;
            7) exit 0 ;;
            *) echo "Pilihan tidak valid. Silakan coba lagi." ;;
        esac
        
        echo
        
    done
}
amat Datang di Aplikasi ID-Backup Manager     "
echo "======================================================"
echo "=================== Dibuat Oleh ======================"
echo "          Muhammad Irsyad Dimas Abdillah             "
echo "                   2341720088                        "
echo " ================== Kelas TI-1B ======================"

function menu() {
    echo "ID-Backup Manager"
    echo "1. Pilih File/Directory untuk Dicadangkan"
    echo "2. Tentukan Lokasi Penyimpanan Cadangan"
    echo "3. Kompresi Cadangan"
    echo "4. Verifikasi Integritas Cadangan"
    echo "5. Pulihkan File/Directory dari Cadangan"
    echo "6. Buat Laporan Pencadangan"
    echo "7. Keluar"
    echo -n "Masukkan Pilihan: "
}

# Function Pilih File/Directory untuk Dicadangkan
function pilihDirektori() {
    echo -n "Masukkan path Direktori/File yang ingin dicadangkan: "
    read path
    echo -n "Masukkan pola pencarian (misalnya, *.txt): "
    read pola
    files=$(find "$path" -type f -name "$pola")
    echo "File yang dipilih:"
    echo "$files"
}

# Function Tentukan Lokasi Penyimpanan Cadangan
function tentukanLokasi() {
    echo -n "Masukkan path lokasi penyimpanan cadangan: "
    read lokasi
    mkdir -p "$lokasi"
    echo "Lokasi penyimpanan cadangan: $lokasi"
}

# Function Kompresi Cadangan
function kompresiCadangan() {
    echo "Kompresi cadangan..."
    tar_file="$lokasi/backup_$(date +%F).tar.gz"
    tar -czf "$tar_file" $files
    echo "Cadangan diperbarui dan tersimpan di $tar_file"
}

# Function Verifikasi Integritas Cadangan
function verifikasiIntegritas() {
    echo "Verifikasi integritas cadangan..."
    if[[-f "$tar_file"]]; then
    md5sum "$tar_file" > "$tar_file.md5"
    echo "Checksum untuk file cadangan: $(cat "$tar_file.md5")"
    else
    echo "File cadangan tidak ditemukan untuk di verifikasi"
    fi
}

# Function Pulihkan File/Directory dari Cadangan
function pulihkanFile() {
    echo -n "Masukkan path file cadangan (tar.gz) yang akan dipulihkan: "
    read restore_file
    echo -n "Masukkan lokasi tujuan pemulihan: "
    read restore_loc
    mkdir -p "$restore_loc"
    tar -xzf "$restore_file" -C "$restore_loc"
    echo "File telah dipulihkan ke: $restore_loc"
}

# Function Buat Laporan Pencadangan
function buatLaporan() {
    file_laporan="$lokasi/backup_report_$(date +%F).txt"
    echo "Laporan Pencadangan - $(date)" > "$file_laporan"
    echo "File yang dicadangkan:" >> "$file_laporan"
    echo "$files" >> "$file_laporan"
    echo "Lokasi Penyimpanan: $lokasi" >> "$file_laporan"
    echo "Waktu Pencadangan: $(date)" >> "$file_laporan"
    echo "Laporan pencadangan dibuat di: $file_laporan"
    cat "$file_laporan"

while true; do
menu
read pilihan

case $pilihan in
    1) pilihDirektori ;;
    2) tentukanLokasi ;;
    3) kompresiCadangan ;;
    4) verifikasiIntegritas ;;
    5) pulihkanFile ;;
    6) buatLaporan ;;
    7) exit 0 ;;
    *) echo "Pilihan tidak valid. Silakan coba lagi." ;;
esac

echo

done
}
