package ms.bz.bd.c.Pgl;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.text.TextUtils;
import g.awf;
import java.io.RandomAccessFile;
import java.nio.ByteBuffer;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import ms.bz.bd.c.Pgl.pblb;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes.dex */
final class pblh extends pblb.pgla {
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:65:0x0131  */
    /* JADX WARN: Removed duplicated region for block: B:68:? A[RETURN, SYNTHETIC] */
    @Override // ms.bz.bd.c.Pgl.pblb.pgla
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Object a(Object obj, String str) {
        String str2;
        String str3;
        String str4;
        RandomAccessFile randomAccessFile;
        RandomAccessFile randomAccessFile2;
        Iterator it;
        Context context = pgla.f21199a.f21200b;
        ApplicationInfo applicationInfo = context.getPackageManager().getApplicationInfo(context.getPackageName(), 0);
        String str5 = applicationInfo.sourceDir;
        if (str5 == null) {
            str5 = applicationInfo.publicSourceDir;
        }
        HashMap hashMap = null;
        if (!TextUtils.isEmpty(str5)) {
            HashMap hashMap2 = new HashMap();
            try {
                randomAccessFile2 = new RandomAccessFile(str5, (String) pblk.a(16777217, 0, 0L, "cc52e2", new byte[]{96}));
                try {
                    it = pblx.a(pblx.b(randomAccessFile2.getChannel()).f21197a).entrySet().iterator();
                } catch (Throwable unused) {
                    hashMap = randomAccessFile2;
                    if (hashMap != null) {
                        randomAccessFile = hashMap;
                        try {
                            break;
                            randomAccessFile.close();
                        } catch (Throwable unused2) {
                        }
                    }
                    hashMap = hashMap2;
                    str2 = "";
                    if (hashMap == null) {
                    }
                    if (str3 != null) {
                        JSONObject jSONObject = new JSONObject(str3);
                        try {
                            str4 = jSONObject.getString((String) pblk.a(16777217, 0, 0L, "a35b6d", new byte[]{125, 52, 82, 23, 54, 102, 111, 23, 106, 53, 79, 50, 78, 23, 7, 125, 103, 30}));
                        } catch (JSONException unused3) {
                            str4 = "";
                        }
                        StringBuilder o = awf.o(str4);
                        o.append((String) pblk.a(16777217, 0, 0L, "07c9b0", new byte[]{122}));
                        try {
                            str2 = jSONObject.getString((String) pblk.a(16777217, 0, 0L, "3704cf", new byte[]{48, 48, 79, 69, 93, 98, 53, 41, 99, 113, 43, 57, 71}));
                        } catch (JSONException unused4) {
                        }
                        o.append(str2);
                        str2 = o.toString();
                    }
                    if (str2.length() != 0) {
                    }
                }
            } catch (Throwable unused5) {
            }
            while (true) {
                randomAccessFile = randomAccessFile2;
                if (it.hasNext()) {
                    Map.Entry entry = (Map.Entry) it.next();
                    if (entry != null && entry.getKey() != null && ((Integer) entry.getKey()).intValue() != 1896449818) {
                        try {
                            ByteBuffer byteBuffer = (ByteBuffer) entry.getValue();
                            byte[] array = byteBuffer.array();
                            int arrayOffset = byteBuffer.arrayOffset();
                            hashMap2.put(entry.getKey(), new String(Arrays.copyOfRange(array, byteBuffer.position() + arrayOffset, arrayOffset + byteBuffer.limit())));
                        } catch (Throwable unused6) {
                        }
                    }
                }
                break;
            }
            randomAccessFile.close();
            hashMap = hashMap2;
        }
        str2 = "";
        str3 = (hashMap == null && hashMap.containsKey(1903654775)) ? (String) hashMap.get(1903654775) : "";
        if (str3 != null && str3.length() > 0) {
            JSONObject jSONObject2 = new JSONObject(str3);
            str4 = jSONObject2.getString((String) pblk.a(16777217, 0, 0L, "a35b6d", new byte[]{125, 52, 82, 23, 54, 102, 111, 23, 106, 53, 79, 50, 78, 23, 7, 125, 103, 30}));
            StringBuilder o2 = awf.o(str4);
            o2.append((String) pblk.a(16777217, 0, 0L, "07c9b0", new byte[]{122}));
            str2 = jSONObject2.getString((String) pblk.a(16777217, 0, 0L, "3704cf", new byte[]{48, 48, 79, 69, 93, 98, 53, 41, 99, 113, 43, 57, 71}));
            o2.append(str2);
            str2 = o2.toString();
        }
        return str2.length() != 0 ? (String) pblk.a(16777217, 0, 0L, "65c0a7", new byte[]{9, 56, 30, 65}) : str2;
    }
}
