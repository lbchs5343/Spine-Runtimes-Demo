package g;

import android.app.DownloadManager;
import android.database.Cursor;
import android.net.Uri;
import com.bytedance.sdk.openadsdk.mediation.MediationConstant;
import java.lang.reflect.Method;

/* loaded from: classes.dex */
public class dkc {
    private DownloadManager k;

    /* renamed from: a, reason: collision with root package name */
    public static final Uri f14298a = Uri.parse("content://downloads/my_downloads");
    private static boolean j = false;

    /* renamed from: g, reason: collision with root package name */
    private static boolean f14299g = false;
    private static Method h = null;
    private static Method i = null;

    public dkc(DownloadManager downloadManager) {
        this.k = downloadManager;
    }

    public static boolean b(int i2) {
        return i2 == 16 || i2 == 8;
    }

    private String l(long j2, String str) {
        Throwable th;
        Cursor cursor;
        int columnIndex;
        String str2 = null;
        try {
            cursor = this.k.query(new DownloadManager.Query().setFilterById(j2));
            if (cursor != null) {
                try {
                    if (cursor.moveToFirst() && (columnIndex = cursor.getColumnIndex(str)) >= 0) {
                        str2 = cursor.getString(columnIndex);
                    }
                } catch (Throwable th2) {
                    th = th2;
                    if (cursor != null) {
                        cursor.close();
                    }
                    throw th;
                }
            }
            if (cursor != null) {
                cursor.close();
            }
            return str2;
        } catch (Throwable th3) {
            th = th3;
            cursor = null;
        }
    }

    private int m(long j2, String str) {
        int columnIndex;
        Cursor cursor = null;
        try {
            cursor = this.k.query(new DownloadManager.Query().setFilterById(j2));
            return (cursor == null || !cursor.moveToFirst() || (columnIndex = cursor.getColumnIndex(str)) < 0) ? -1 : cursor.getInt(columnIndex);
        } finally {
            if (cursor != null) {
                cursor.close();
            }
        }
    }

    public int c(long j2) {
        return m(j2, "status");
    }

    public String d(long j2) {
        return l(j2, "local_uri");
    }

    public int e(long j2) {
        return m(j2, MediationConstant.KEY_REASON);
    }

    public boolean f(long j2) {
        return b(c(j2));
    }
}
