package com.ss.android.downloadlib.ox;

import android.content.ContentUris;
import android.content.Context;
import android.database.Cursor;
import android.media.MediaScannerConnection;
import android.net.Uri;
import android.provider.MediaStore;
import android.text.TextUtils;
import com.ss.android.downloadlib.addownload.no;
import com.ss.android.socialbase.downloader.depend.mp;
import com.ss.android.socialbase.downloader.exception.BaseException;
import com.ss.android.socialbase.downloader.model.DownloadInfo;
import g.ada;
import g.awf;
import java.io.File;

/* loaded from: classes.dex */
public class dq implements mp {
    private void dq(Context context, final DownloadInfo downloadInfo) {
        String str = downloadInfo.getSavePath() + File.separator + downloadInfo.getName();
        Cursor query = context.getContentResolver().query(MediaStore.Files.getContentUri("external"), new String[]{ada.COLUMN_ID}, "_data=? ", new String[]{str}, null);
        if (query == null || !query.moveToFirst()) {
            MediaScannerConnection.scanFile(context, new String[]{str}, new String[]{"application/vnd.android.package-archive"}, new MediaScannerConnection.OnScanCompletedListener() { // from class: com.ss.android.downloadlib.ox.dq.1
                @Override // android.media.MediaScannerConnection.OnScanCompletedListener
                public void onScanCompleted(String str2, Uri uri) {
                    if (uri != null) {
                        downloadInfo.safePutToDBJsonData("file_content_uri", uri.toString());
                        com.ss.android.socialbase.downloader.downloader.ox.e().dq(downloadInfo);
                    }
                }
            });
        } else {
            downloadInfo.safePutToDBJsonData("file_content_uri", ContentUris.withAppendedId(MediaStore.Files.getContentUri("external"), query.getInt(query.getColumnIndex(ada.COLUMN_ID))).toString());
        }
        com.ss.android.socialbase.downloader.kk.iw.dq(query);
    }

    private boolean ox(DownloadInfo downloadInfo) {
        StringBuilder sb = new StringBuilder();
        sb.append(downloadInfo.getSavePath());
        String str = File.separator;
        sb.append(str);
        sb.append(downloadInfo.getName());
        String sb2 = sb.toString();
        File file = new File(sb2);
        String dq = com.ss.android.socialbase.appdownloader.iw.dq.s.dq(no.getContext(), com.ss.android.socialbase.appdownloader.ox.dq(downloadInfo, file), sb2);
        boolean z = false;
        if (!TextUtils.isEmpty(dq)) {
            String c2 = awf.c(dq, ".apk");
            if (c2.equals(downloadInfo.getName())) {
                return true;
            }
            try {
                z = file.renameTo(new File(downloadInfo.getSavePath() + str + c2));
                if (!z) {
                    return z;
                }
                downloadInfo.setName(c2);
                return z;
            } catch (Exception e2) {
                e2.printStackTrace();
            }
        }
        return z;
    }

    @Override // com.ss.android.socialbase.downloader.depend.mp
    public boolean d(DownloadInfo downloadInfo) {
        if (downloadInfo != null) {
            return com.ss.android.downloadlib.mn.s.d(com.ss.android.socialbase.downloader.mn.dq.dq(downloadInfo.getId()));
        }
        return false;
    }

    @Override // com.ss.android.socialbase.downloader.depend.mp
    public void dq(DownloadInfo downloadInfo) throws BaseException {
        if (downloadInfo == null || !ox(downloadInfo)) {
            return;
        }
        dq(no.getContext(), downloadInfo);
    }
}
