package com.ss.android.downloadlib.addownload.ox;

import android.content.Context;
import com.ss.android.downloadlib.addownload.no;
import com.ss.android.downloadlib.mn.mp;
import com.ss.android.socialbase.downloader.downloader.Downloader;
import com.ss.android.socialbase.downloader.model.DownloadInfo;
import g.awf;
import java.io.File;
import java.io.FileOutputStream;
import java.util.List;

/* loaded from: classes.dex */
public class ox {
    public static void d() {
        List successedDownloadInfosWithMimeType = Downloader.getInstance(no.getContext()).getSuccessedDownloadInfosWithMimeType("application/vnd.android.package-archive");
        if (successedDownloadInfosWithMimeType == null || successedDownloadInfosWithMimeType.isEmpty()) {
            return;
        }
        for (int i = 0; i < successedDownloadInfosWithMimeType.size(); i++) {
            DownloadInfo downloadInfo = (DownloadInfo) successedDownloadInfosWithMimeType.get(i);
            if (downloadInfo != null) {
                String str = downloadInfo.getSavePath() + File.separator + downloadInfo.getName();
                File file = new File(str);
                if (file.exists()) {
                    long currentTimeMillis = System.currentTimeMillis() - file.lastModified();
                    long dq = com.ss.android.socialbase.downloader.mn.dq.dq(downloadInfo.getId()).dq("download_complete_file_expire_hours", 0) * 3600000;
                    if (dq <= 0) {
                        dq = 604800000;
                    }
                    if (currentTimeMillis >= dq || mp.iw(no.getContext(), str)) {
                        dq(file);
                    }
                }
            }
        }
    }

    public static void dq() {
        List<DownloadInfo> dq = com.ss.android.socialbase.appdownloader.p.o().dq(no.getContext());
        if (dq == null || dq.size() <= 0) {
            return;
        }
        for (int i = 0; i < dq.size(); i++) {
            DownloadInfo downloadInfo = dq.get(i);
            File file = new File(downloadInfo.getTempPath(), downloadInfo.getTempName());
            long lastModified = file.lastModified();
            long dq2 = com.ss.android.socialbase.downloader.mn.dq.dq(downloadInfo.getId()).dq("download_file_expire_hours", 0) * 3600000;
            if (dq2 <= 0) {
                dq2 = 604800000;
            }
            if (file.isFile() && file.exists() && System.currentTimeMillis() - lastModified >= dq2) {
                dq(file);
                Downloader.getInstance(no.getContext()).clearDownloadData(downloadInfo.getId());
            }
        }
    }

    public static void dq(Context context) {
        File externalCacheDir;
        if (context == null || (externalCacheDir = context.getExternalCacheDir()) == null) {
            return;
        }
        try {
            dq(externalCacheDir.getPath());
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:24:0x0031 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static void dq(File file) {
        FileOutputStream fileOutputStream;
        Exception e2;
        FileOutputStream fileOutputStream2 = null;
        try {
            try {
                fileOutputStream = new FileOutputStream(file);
                try {
                    fileOutputStream.write("1".getBytes());
                    fileOutputStream.close();
                } catch (Exception e3) {
                    e2 = e3;
                    e2.printStackTrace();
                    if (fileOutputStream != null) {
                        try {
                            fileOutputStream.close();
                        } catch (Exception e4) {
                            e4.printStackTrace();
                        }
                    }
                    file.delete();
                }
            } catch (Throwable th) {
                th = th;
                fileOutputStream2 = fileOutputStream;
                if (fileOutputStream2 != null) {
                    try {
                        fileOutputStream2.close();
                    } catch (Exception e5) {
                        e5.printStackTrace();
                    }
                }
                throw th;
            }
        } catch (Exception e6) {
            fileOutputStream = null;
            e2 = e6;
        } catch (Throwable th2) {
            th = th2;
            if (fileOutputStream2 != null) {
            }
            throw th;
        }
        file.delete();
    }

    private static void dq(String str) {
        File file = new File(str);
        if (file.exists()) {
            if (file.isFile()) {
                file.delete();
                return;
            }
            String[] list = file.list();
            if (list == null) {
                return;
            }
            for (String str2 : list) {
                if (str2 != null) {
                    String str3 = File.separator;
                    String concat = str.endsWith(str3) ? str.concat(str2) : awf.i(str, str3, str2);
                    File file2 = new File(concat);
                    if (file2.isFile()) {
                        file2.delete();
                    }
                    if (file2.isDirectory()) {
                        dq(concat);
                    }
                }
            }
            file.delete();
        }
    }
}
