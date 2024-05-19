#!/bin/bash

# Dimas-TI1B-20.sh

# Muhammad Irsyad Dimas Abdillah 20/2341720088 TI-1B
# UAS-Praktikum Sistem Operasi
clear

echo "======================================================"
echo "       Selamat Datang di Aplikasi ID-File Master      "
echo "======================================================"
echo "=================== Dibuat Oleh ======================"
echo "          Muhammad Irsyad Dimas Abdillah             "
echo "                   2341720088                        "
echo "=================== Kelas TI-1B ======================"

function menu() {
    echo "======================================"
    echo "           ID-File Master             "
    echo "======================================"
    echo "1. Membuat Direktori"
    echo "2. Lihat Direktori dan File"
    echo "3. Buat File"
    echo "4. Lihat Detail File"
    echo "5. Hapus File"
    echo "6. Hapus Folder"
    echo "7. Copy File"
    echo "8. Move File"
    echo "9. Baca File"
    echo "10. Cari File Berdasarkan Nama"
    echo "11. Ubah Izin File"
    echo "12. Kompresi Direktori"
    echo "13. Keluar"
    echo -n "Masukkan pilihan anda: "
}

# Fungsi Membuat Direktori
function buatDirektori() {
    echo -n "Masukkan nama direktori yang ingin dibuat: "
    read nama_direktori
    mkdir -p "$nama_direktori"
    echo "Direktori '$nama_direktori' telah dibuat."
}

# Fungsi Lihat Direktori dan File
function lihatDirektori() {
    echo -n "Masukkan path direktori yang ingin dilihat: "
    read path_direktori
    ls -l "$path_direktori"
}

# Fungsi Buat File
function buatFile() {
    echo -n "Masukkan nama file yang ingin dibuat: "
    read nama_file
    touch "$nama_file"
    echo "File '$nama_file' telah dibuat."
}

# Fungsi Lihat Detail File
function lihatDetailFile() {
    echo -n "Masukkan nama file yang ingin dilihat: "
    read nama_file
    stat "$nama_file"
}

# Fungsi Hapus File
function hapusFile() {
    echo -n "Masukkan nama file yang ingin dihapus: "
    read nama_file
    rm -f "$nama_file"
    echo "File '$nama_file' telah dihapus."
}

# Fungsi Hapus Folder
function hapusFolder() {
    echo -n "Masukkan nama folder yang ingin dihapus: "
    read nama_folder
    rm -rf "$nama_folder"
    echo "Folder '$nama_folder' telah dihapus."
}

# Fungsi Copy File
function copyFile() {
    echo -n "Masukkan nama file yang ingin dicopy: "
    read file_sumber
    echo -n "Masukkan tujuan copy file: "
    read file_tujuan
    cp "$file_sumber" "$file_tujuan"
    echo "File '$file_sumber' telah dicopy ke '$file_tujuan'."
}

# Fungsi Move File
function moveFile() {
    echo -n "Masukkan nama file yang ingin dipindahkan: "
    read file_sumber
    echo -n "Masukkan tujuan pemindahan file: "
    read file_tujuan
    mv "$file_sumber" "$file_tujuan"
    echo "File '$file_sumber' telah dipindahkan ke '$file_tujuan'."
}

# Fungsi Baca File
function bacaFile() {
    echo -n "Masukkan nama file yang ingin dibaca: "
    read nama_file
    cat "$nama_file"
}

# Fungsi Cari File Berdasarkan Nama
function cariFile() {
    echo -n "Masukkan nama file yang ingin dicari: "
    read nama_file
    find . -name "$nama_file"
}

# Fungsi Ubah Izin File
function ubahIzinFile() {
    echo -n "Masukkan nama file yang izinnya ingin diubah: "
    read nama_file
    echo -n "Masukkan izin baru (misalnya 755): "
    read izin_baru
    chmod "$izin_baru" "$nama_file"
    echo "Izin file '$nama_file' telah diubah menjadi $izin_baru."
}

# Fungsi Kompresi Direktori
function kompresiDirektori() {
    echo -n "Masukkan nama direktori yang ingin dikompresi: "
    read nama_direktori
    file_tar="$nama_direktori.tar.gz"
    tar -czf "$file_tar" "$nama_direktori"
    echo "Direktori '$nama_direktori' telah dikompresi menjadi '$file_tar'."
}

# Loop utama
while true; do
    menu
    read pilihan
    
    case $pilihan in
        1) buatDirektori ;;
        2) lihatDirektori ;;
        3) buatFile ;;
        4) lihatDetailFile ;;
        5) hapusFile ;;
        6) hapusFolder ;;
        7) copyFile ;;
        8) moveFile ;;
        9) bacaFile ;;
        10) cariFile ;;
        11) ubahIzinFile ;;
        12) kompresiDirektori ;;
        13) exit 0 ;;
        *) echo "Pilihan tidak valid. Silakan coba lagi." ;;
    esac
    
    echo
done