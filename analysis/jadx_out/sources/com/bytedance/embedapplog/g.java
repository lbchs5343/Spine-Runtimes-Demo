package com.bytedance.embedapplog;

import android.content.Context;
import android.content.pm.PackageManager;
import android.database.Cursor;
import android.net.Uri;
import com.bytedance.embedapplog.hy;

/* loaded from: classes.dex */
final class g implements hy {
    private io<Boolean> dq = new io<Boolean>() { // from class: com.bytedance.embedapplog.g.1
        @Override // com.bytedance.embedapplog.io
        /* renamed from: ox, reason: merged with bridge method [inline-methods] */
        public Boolean dq(Object... objArr) {
            try {
                PackageManager packageManager = ((Context) objArr[0]).getPackageManager();
                if (packageManager != null) {
                    return Boolean.valueOf(packageManager.resolveContentProvider("com.meizu.flyme.openidsdk", 0) != null);
                }
            } catch (Exception unused) {
            }
            return Boolean.FALSE;
        }
    };

    private String dq(Cursor cursor) {
        if (cursor == null || cursor.isClosed()) {
            return null;
        }
        cursor.moveToFirst();
        int columnIndex = cursor.getColumnIndex("value");
        if (columnIndex >= 0) {
            return cursor.getString(columnIndex);
        }
        return null;
    }

    @Override // com.bytedance.embedapplog.hy
    public hy.dq d(Context context) {
        Cursor cursor;
        try {
            cursor = context.getContentResolver().query(Uri.parse("content://com.meizu.flyme.openidsdk/"), null, null, new String[]{"oaid"}, null);
            if (cursor == null) {
                return null;
            }
            try {
                hy.dq dqVar = new hy.dq();
                dqVar.f721d = dq(cursor);
                return dqVar;
            } catch (Throwable th) {
                th = th;
                try {
                    jo.dq(th);
                    return null;
                } finally {
                    yo.dq(cursor);
                }
            }
        } catch (Throwable th2) {
            th = th2;
            cursor = null;
        }
    }

    @Override // com.bytedance.embedapplog.hy
    public boolean dq(Context context) {
        if (context == null) {
            return false;
        }
        return this.dq.d(context).booleanValue();
    }
}
