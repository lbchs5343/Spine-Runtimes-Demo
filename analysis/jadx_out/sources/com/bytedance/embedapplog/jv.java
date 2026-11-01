package com.bytedance.embedapplog;

import android.content.Context;
import android.database.Cursor;
import android.net.Uri;
import android.os.SystemProperties;
import com.bytedance.embedapplog.hy;

/* loaded from: classes.dex */
final class jv implements hy {
    private static final io<Boolean> dq = new io<Boolean>() { // from class: com.bytedance.embedapplog.jv.1
        @Override // com.bytedance.embedapplog.io
        /* renamed from: ox, reason: merged with bridge method [inline-methods] */
        public Boolean dq(Object... objArr) {
            return Boolean.valueOf("1".equals(jv.d("persist.sys.identifierid.supported", "0")));
        }
    };

    public jv(Context context) {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static String d(String str, String str2) {
        try {
            return SystemProperties.get(str, str2);
        } catch (Throwable unused) {
            return str2;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:12:0x0033 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Type inference failed for: r1v0 */
    /* JADX WARN: Type inference failed for: r1v1 */
    /* JADX WARN: Type inference failed for: r1v2, types: [android.database.Cursor] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private static String dq(Context context, int i, String str) {
        Uri parse;
        Uri uri;
        Throwable th;
        Exception exc;
        Cursor cursor;
        ?? r1 = 0;
        r1 = null;
        String string = null;
        try {
            if (i == 0) {
                parse = Uri.parse("content://com.vivo.vms.IdProvider/IdentifierId/OAID");
            } else if (i == 1) {
                parse = Uri.parse("content://com.vivo.vms.IdProvider/IdentifierId/VAID_".concat(String.valueOf(str)));
            } else {
                if (i != 2) {
                    uri = null;
                    if (uri != null) {
                        try {
                            cursor = context.getContentResolver().query(uri, null, null, null, null);
                            if (cursor != null) {
                                try {
                                    if (cursor.moveToNext()) {
                                        string = cursor.getString(cursor.getColumnIndex("value"));
                                    }
                                } catch (Exception e2) {
                                    exc = e2;
                                    jo.dq(exc);
                                    yo.dq(cursor);
                                    return null;
                                }
                            }
                            yo.dq(cursor);
                            return string;
                        } catch (Exception e3) {
                            exc = e3;
                            cursor = null;
                        } catch (Throwable th2) {
                            th = th2;
                            yo.dq((Cursor) r1);
                            throw th;
                        }
                    }
                    return null;
                }
                parse = Uri.parse("content://com.vivo.vms.IdProvider/IdentifierId/AAID_".concat(String.valueOf(str)));
            }
            if (uri != null) {
            }
            return null;
        } catch (Throwable th3) {
            th = th3;
            r1 = context;
        }
        uri = parse;
    }

    public static boolean dq() {
        return dq.d(new Object[0]).booleanValue();
    }

    @Override // com.bytedance.embedapplog.hy
    public hy.dq d(Context context) {
        hy.dq dqVar = new hy.dq();
        dqVar.f721d = dq(context, 0, null);
        return dqVar;
    }

    @Override // com.bytedance.embedapplog.hy
    public boolean dq(Context context) {
        return dq();
    }
}
