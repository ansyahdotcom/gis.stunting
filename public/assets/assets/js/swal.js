$(function() {
    const Toast = Swal.mixin({
        toast: true,
        position: 'top',
        showConfirmButton: false,
        timer: 2000
    });

    const flashData = $('.flash-data').data('flashdata');
    if(flashData == 'login'){
        Toast.fire({
            icon: 'success',
            title:'Anda berhasil login!',
        });
    } else if(flashData == 'logout') {
        Toast.fire({
            icon: 'success',
            title: 'Anda berhasil logout'
        });
    } else if(flashData == 'ubah_passwd') {
        Toast.fire({
            icon: 'success',
            title: 'Password berhasil diubah'
        });
    } else if(flashData == 'wrong_passwd') {
        Toast.fire({
            icon: 'error',
            title: 'Maaf password tidak sesuai!'
        });
    } else if(flashData == 'wrong_user') {
        Toast.fire({
            icon: 'error',
            title: 'Maaf username tidak sesuai!'
        });
    } else if(flashData == 'belum_terdaftar') {
        Toast.fire({
            icon: 'error',
            title: 'Username / password anda salah!'
        });
    } else if (flashData == 'save') {
        Toast.fire({
            icon: 'success',
            title: 'Data berhasil disimpan',
        });
    } else if (flashData == 'failsave') {
        Toast.fire({
            icon: 'error',
            title: 'Gagal menyimpan data',
        });
    } else if (flashData == 'edit') {
        Toast.fire({
            icon: 'success',
            title: 'Data berhasil diubah',
        });
    } else if (flashData == 'failedit') {
        Toast.fire({
            icon: 'success',
            title: 'Gagal mengubah data',
        });
    } else if (flashData == 'delete') {
        Toast.fire({
            icon: 'success',
            title: 'Data berhasil dihapus',
        });
    } else if (flashData == 'notdelete') {
        Toast.fire({
            icon: 'error',
            title: 'Gagal menghapus data',
        });
    } else if (flashData == 'wrongext') {
        Toast.fire({
            icon: 'error',
            title: 'Format file tidak sesuai!',
        });
    } else if (flashData == 'notNullVideo') {
        Toast.fire({
            icon: 'error',
            title: 'Isi salah satu sumber video!',
            timer: 7000
        });
    } else if (flashData == 'failedSaveVideo') {
        Toast.fire({
            icon: 'error',
            title: 'Video yang sama hanya boleh dari satu sumber. Hapus salah satu!',
            timer: 7000
        });
    } else if (flashData == 'posted') {
        Toast.fire({
            icon: 'success',
            title: 'Artikel berhasil diposting',
        });
    } else if (flashData == 'failedPost') {
        Toast.fire({
            icon: 'error',
            title: 'Artikel gagal diposting',
        });
    }
});