package com.tencent.bugly.proguard;

import android.content.Context;
import android.os.Process;
import android.util.Pair;
import com.bykv.vk.component.ttvideo.LiveConfigKey;
import com.bykv.vk.component.ttvideo.utils.AVErrorInfo;
import java.util.HashMap;
import java.util.Map;
import java.util.UUID;

/* loaded from: classes.dex */
public final class aj implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    protected int f9575a;

    /* renamed from: b, reason: collision with root package name */
    protected long f9576b;

    /* renamed from: c, reason: collision with root package name */
    protected long f9577c;

    /* renamed from: d, reason: collision with root package name */
    private int f9578d;

    /* renamed from: e, reason: collision with root package name */
    private int f9579e;

    /* renamed from: f, reason: collision with root package name */
    private final Context f9580f;

    /* renamed from: g, reason: collision with root package name */
    private final int f9581g;
    private final byte[] h;
    private final aa i;
    private final ac j;
    private final af k;
    private final ai l;
    private final int m;
    private final ah n;
    private final ah o;
    private String p;
    private final String q;
    private final Map<String, String> r;
    private boolean s;

    public aj(Context context, int i, int i2, byte[] bArr, String str, String str2, ah ahVar, int i3, int i4, boolean z) {
        this.f9578d = 2;
        this.f9579e = 30000;
        this.p = null;
        this.f9575a = 0;
        this.f9576b = 0L;
        this.f9577c = 0L;
        this.s = false;
        this.f9580f = context;
        this.i = aa.a(context);
        this.h = bArr;
        this.j = ac.a();
        if (af.f9552a == null) {
            af.f9552a = new af(context);
        }
        this.k = af.f9552a;
        ai a2 = ai.a();
        this.l = a2;
        this.m = i;
        this.p = str;
        this.q = str2;
        this.n = ahVar;
        this.o = a2.f9569a;
        this.f9581g = i2;
        if (i3 > 0) {
            this.f9578d = i3;
        }
        if (i4 > 0) {
            this.f9579e = i4;
        }
        this.s = z;
        this.r = null;
    }

    public aj(Context context, int i, int i2, byte[] bArr, String str, String str2, ah ahVar, boolean z) {
        this(context, i, i2, bArr, str, str2, ahVar, 2, 30000, z);
    }

    private Pair<Boolean, Boolean> a(Map<String, String> map) {
        int i;
        if (map == null || map.size() == 0) {
            al.d("[Upload] Headers is empty.", new Object[0]);
        } else if (!map.containsKey("status")) {
            al.d("[Upload] Headers does not contain %s", "status");
        } else if (map.containsKey("Bugly-Version")) {
            String str = map.get("Bugly-Version");
            if (str.contains("bugly")) {
                al.c("[Upload] Bugly version from headers is: %s", str);
                try {
                    i = Integer.parseInt(map.get("status"));
                } catch (Throwable unused) {
                    i = -1;
                }
                try {
                    al.c("[Upload] Status from server is %d (pid=%d | tid=%d).", Integer.valueOf(i), Integer.valueOf(Process.myPid()), Integer.valueOf(Process.myTid()));
                    if (i == 0) {
                        Boolean bool = Boolean.TRUE;
                        return new Pair<>(bool, bool);
                    }
                    a(false, 1, "status of server is ".concat(String.valueOf(i)));
                    Boolean bool2 = Boolean.FALSE;
                    return new Pair<>(bool2, bool2);
                } catch (Throwable unused2) {
                    a("[Upload] Failed to upload for format of status header is invalid: " + Integer.toString(i));
                    return new Pair<>(Boolean.FALSE, Boolean.TRUE);
                }
            }
            al.d("[Upload] Bugly version is not valid: %s", str);
        } else {
            al.d("[Upload] Headers does not contain %s", "Bugly-Version");
        }
        al.c("[Upload] Headers from server is not valid, just try again (pid=%d | tid=%d).", Integer.valueOf(Process.myPid()), Integer.valueOf(Process.myTid()));
        a("[Upload] Failed to upload for no status header.");
        if (map != null) {
            for (Map.Entry<String, String> entry : map.entrySet()) {
                al.c(String.format("[key]: %s, [value]: %s", entry.getKey(), entry.getValue()), new Object[0]);
            }
        }
        al.c("[Upload] Failed to upload for no status header.", new Object[0]);
        return new Pair<>(Boolean.FALSE, Boolean.TRUE);
    }

    private Pair<Boolean, Boolean> a(byte[] bArr, Map<String, String> map) {
        if (bArr == null) {
            a("Failed to upload for no response!");
            return new Pair<>(Boolean.FALSE, Boolean.TRUE);
        }
        al.c("[Upload] Received %d bytes", Integer.valueOf(bArr.length));
        if (bArr.length != 0) {
            Boolean bool = Boolean.TRUE;
            return new Pair<>(bool, bool);
        }
        a(false, 1, "response data from server is empty");
        if (map != null) {
            for (Map.Entry<String, String> entry : map.entrySet()) {
                al.c("[Upload] HTTP headers from server: key = %s, value = %s", entry.getKey(), entry.getValue());
            }
        }
        Boolean bool2 = Boolean.FALSE;
        return new Pair<>(bool2, bool2);
    }

    private static void a(String str) {
        al.e("[Upload] Failed to upload(%d): %s", 1, str);
    }

    /* JADX WARN: Removed duplicated region for block: B:12:0x0020  */
    /* JADX WARN: Removed duplicated region for block: B:15:0x0048  */
    /* JADX WARN: Removed duplicated region for block: B:18:0x0061  */
    /* JADX WARN: Removed duplicated region for block: B:21:0x0068  */
    /* JADX WARN: Removed duplicated region for block: B:24:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:25:0x002a  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private void a(boolean z, int i, String str) {
        String str2;
        ah ahVar;
        ah ahVar2;
        int i2 = this.f9581g;
        if (i2 != 630) {
            if (i2 != 640) {
                if (i2 != 830) {
                    if (i2 != 840) {
                        str2 = String.valueOf(i2);
                        if (z) {
                            al.a("[Upload] Success: %s", str2);
                        } else {
                            al.e("[Upload] Failed to upload(%d) %s: %s", Integer.valueOf(i), str2, str);
                        }
                        if (this.f9576b + this.f9577c > 0) {
                            this.l.a(this.l.a(this.s) + this.f9576b + this.f9577c, this.s);
                        }
                        ahVar = this.n;
                        if (ahVar != null) {
                            ahVar.a(z, str);
                        }
                        ahVar2 = this.o;
                        if (ahVar2 != null) {
                            ahVar2.a(z, str);
                            return;
                        }
                        return;
                    }
                }
            }
            str2 = "userinfo";
            if (z) {
            }
            if (this.f9576b + this.f9577c > 0) {
            }
            ahVar = this.n;
            if (ahVar != null) {
            }
            ahVar2 = this.o;
            if (ahVar2 != null) {
            }
        }
        str2 = AVErrorInfo.CRASH;
        if (z) {
        }
        if (this.f9576b + this.f9577c > 0) {
        }
        ahVar = this.n;
        if (ahVar != null) {
        }
        ahVar2 = this.o;
        if (ahVar2 != null) {
        }
    }

    private static boolean a(br brVar, aa aaVar, ac acVar) {
        if (brVar == null) {
            al.d("resp == null!", new Object[0]);
            return false;
        }
        byte b2 = brVar.f9723a;
        if (b2 != 0) {
            al.e("resp result error %d", Byte.valueOf(b2));
            return false;
        }
        try {
            if (!ap.b(brVar.f9729g) && !aa.b().i().equals(brVar.f9729g)) {
                w.a().a(ac.f9544a, "device", brVar.f9729g.getBytes("UTF-8"), true);
                aaVar.d(brVar.f9729g);
            }
        } catch (Throwable th) {
            al.a(th);
        }
        aaVar.m = brVar.f9727e;
        int i = brVar.f9724b;
        if (i == 510) {
            byte[] bArr = brVar.f9725c;
            if (bArr == null) {
                al.e("[Upload] Strategy data is null. Response cmd: %d", Integer.valueOf(i));
                return false;
            }
            bt btVar = (bt) ae.a(bArr, bt.class);
            if (btVar == null) {
                al.e("[Upload] Failed to decode strategy from server. Response cmd: %d", Integer.valueOf(brVar.f9724b));
                return false;
            }
            acVar.a(btVar);
        }
        return true;
    }

    private static String b(String str) {
        if (ap.b(str)) {
            return str;
        }
        try {
            return str + "?aid=" + UUID.randomUUID().toString();
        } catch (Throwable th) {
            al.a(th);
            return str;
        }
    }

    public final void a(long j) {
        this.f9575a++;
        this.f9576b += j;
    }

    public final void b(long j) {
        this.f9577c += j;
    }

    @Override // java.lang.Runnable
    public final void run() {
        String str;
        ac acVar;
        Pair pair;
        boolean booleanValue;
        try {
            this.f9575a = 0;
            this.f9576b = 0L;
            this.f9577c = 0L;
            if (ab.c(this.f9580f) == null) {
                str = "network is not available";
            } else {
                byte[] bArr = this.h;
                if (bArr != null && bArr.length != 0) {
                    if (this.f9580f != null && this.i != null && (acVar = this.j) != null && this.k != null) {
                        str = acVar.c() == null ? "illegal local strategy" : null;
                    }
                    str = "illegal access error";
                }
                str = "request package is empty!";
            }
            if (str != null) {
                a(false, 0, str);
                return;
            }
            byte[] a2 = ap.a(this.h);
            if (a2 == null) {
                a(false, 0, "failed to zip request body");
                return;
            }
            HashMap hashMap = new HashMap(10);
            hashMap.put(LiveConfigKey.TLS, "1");
            hashMap.put("prodId", this.i.e());
            hashMap.put("bundleId", this.i.f9536c);
            hashMap.put("appVer", this.i.o);
            Map<String, String> map = this.r;
            if (map != null) {
                hashMap.putAll(map);
            }
            hashMap.put("cmd", Integer.toString(this.f9581g));
            hashMap.put("platformId", Byte.toString((byte) 1));
            hashMap.put("sdkVer", this.i.h);
            hashMap.put("strategylastUpdateTime", Long.toString(this.j.c().o));
            this.l.a(this.m, System.currentTimeMillis());
            String str2 = this.p;
            this.j.c();
            int i = 0;
            int i2 = 0;
            while (true) {
                int i3 = i + 1;
                if (i >= this.f9578d) {
                    a(false, i2, "failed after many attempts");
                    return;
                }
                if (i3 > 1) {
                    al.d("[Upload] Failed to upload last time, wait and try(%d) again.", Integer.valueOf(i3));
                    ap.b(this.f9579e);
                    if (i3 == this.f9578d) {
                        al.d("[Upload] Use the back-up url at the last time: %s", this.q);
                        str2 = this.q;
                    }
                }
                al.c("[Upload] Send %d bytes", Integer.valueOf(a2.length));
                str2 = b(str2);
                al.c("[Upload] Upload to %s with cmd %d (pid=%d | tid=%d).", str2, Integer.valueOf(this.f9581g), Integer.valueOf(Process.myPid()), Integer.valueOf(Process.myTid()));
                byte[] a3 = this.k.a(str2, a2, this, hashMap);
                Map<String, String> map2 = this.k.f9554c;
                Pair<Boolean, Boolean> a4 = a(a3, map2);
                if (((Boolean) a4.first).booleanValue()) {
                    Pair<Boolean, Boolean> a5 = a(map2);
                    if (((Boolean) a5.first).booleanValue()) {
                        byte[] b2 = ap.b(a3);
                        if (b2 != null) {
                            a3 = b2;
                        }
                        br a6 = ae.a(a3);
                        if (a6 == null) {
                            a(false, 1, "failed to decode response package");
                            Boolean bool = Boolean.FALSE;
                            pair = new Pair(bool, bool);
                        } else {
                            Integer valueOf = Integer.valueOf(a6.f9724b);
                            byte[] bArr2 = a6.f9725c;
                            al.c("[Upload] Response cmd is: %d, length of sBuffer is: %d", valueOf, Integer.valueOf(bArr2 == null ? 0 : bArr2.length));
                            if (a(a6, this.i, this.j)) {
                                a(true, 2, "successfully uploaded");
                                Boolean bool2 = Boolean.TRUE;
                                pair = new Pair(bool2, bool2);
                            } else {
                                a(false, 2, "failed to process response package");
                                Boolean bool3 = Boolean.FALSE;
                                pair = new Pair(bool3, bool3);
                            }
                        }
                        booleanValue = !((Boolean) pair.first).booleanValue() ? ((Boolean) pair.second).booleanValue() : false;
                    } else {
                        booleanValue = ((Boolean) a5.second).booleanValue();
                    }
                } else {
                    booleanValue = ((Boolean) a4.second).booleanValue();
                }
                if (!booleanValue) {
                    return;
                }
                i = i3;
                i2 = 1;
            }
        } catch (Throwable th) {
            if (al.a(th)) {
                return;
            }
            th.printStackTrace();
        }
    }
}
