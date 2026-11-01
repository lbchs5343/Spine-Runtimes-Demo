package com.tencent.bugly.proguard;

import android.content.Context;
import android.text.TextUtils;
import com.tencent.bugly.crashreport.biz.UserInfoBean;
import com.tencent.bugly.crashreport.common.strategy.StrategyBean;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/* loaded from: classes.dex */
public final class ae {
    public static bq a(Context context, int i, byte[] bArr) {
        String str;
        aa b2 = aa.b();
        StrategyBean c2 = ac.a().c();
        if (b2 == null || c2 == null) {
            al.e("Can not create request pkg for parameters is invalid.", new Object[0]);
            return null;
        }
        try {
            bq bqVar = new bq();
            synchronized (b2) {
                try {
                    bqVar.f9716a = b2.f9535b;
                    bqVar.f9717b = b2.e();
                    bqVar.f9718c = b2.f9536c;
                    bqVar.f9719d = b2.o;
                    bqVar.f9720e = b2.s;
                    bqVar.f9721f = b2.h;
                    bqVar.f9722g = i;
                    if (bArr == null) {
                        bArr = "".getBytes();
                    }
                    bqVar.h = bArr;
                    bqVar.i = b2.h();
                    bqVar.j = b2.k;
                    bqVar.k = new HashMap();
                    bqVar.l = b2.d();
                    bqVar.m = c2.o;
                    bqVar.o = b2.g();
                    bqVar.p = ab.c(context);
                    bqVar.q = System.currentTimeMillis();
                    bqVar.s = b2.i();
                    bqVar.v = b2.g();
                    bqVar.w = bqVar.p;
                    bqVar.n = "com.tencent.bugly";
                    bqVar.k.put("A26", b2.s());
                    Map<String, String> map = bqVar.k;
                    StringBuilder sb = new StringBuilder();
                    sb.append(aa.C());
                    map.put("A62", sb.toString());
                    Map<String, String> map2 = bqVar.k;
                    StringBuilder sb2 = new StringBuilder();
                    sb2.append(aa.D());
                    map2.put("A63", sb2.toString());
                    Map<String, String> map3 = bqVar.k;
                    StringBuilder sb3 = new StringBuilder();
                    sb3.append(b2.J);
                    map3.put("F11", sb3.toString());
                    Map<String, String> map4 = bqVar.k;
                    StringBuilder sb4 = new StringBuilder();
                    sb4.append(b2.I);
                    map4.put("F12", sb4.toString());
                    bqVar.k.put("D3", b2.q);
                    List<o> list = p.f9779b;
                    if (list != null) {
                        for (o oVar : list) {
                            String str2 = oVar.versionKey;
                            if (str2 != null && (str = oVar.version) != null) {
                                bqVar.k.put(str2, str);
                            }
                        }
                    }
                    bqVar.k.put("G15", ap.d("G15", ""));
                    bqVar.k.put("G10", ap.d("G10", ""));
                    bqVar.k.put("D4", ap.d("D4", "0"));
                } catch (Throwable th) {
                    throw th;
                }
            }
            Map<String, String> x = b2.x();
            if (x != null) {
                for (Map.Entry<String, String> entry : x.entrySet()) {
                    if (!TextUtils.isEmpty(entry.getValue())) {
                        bqVar.k.put(entry.getKey(), entry.getValue());
                    }
                }
            }
            return bqVar;
        } catch (Throwable th2) {
            if (!al.b(th2)) {
                th2.printStackTrace();
            }
            return null;
        }
    }

    public static br a(byte[] bArr) {
        if (bArr == null) {
            return null;
        }
        try {
            e eVar = new e();
            eVar.b();
            eVar.a("utf-8");
            eVar.a(bArr);
            Object b2 = eVar.b("detail", new br());
            if (br.class.isInstance(b2)) {
                return (br) br.class.cast(b2);
            }
            return null;
        } catch (Throwable th) {
            if (al.b(th)) {
                return null;
            }
            th.printStackTrace();
            return null;
        }
    }

    public static bu a(UserInfoBean userInfoBean) {
        if (userInfoBean == null) {
            return null;
        }
        bu buVar = new bu();
        buVar.f9739a = userInfoBean.f9491e;
        buVar.f9743e = userInfoBean.j;
        buVar.f9742d = userInfoBean.f9489c;
        buVar.f9741c = userInfoBean.f9490d;
        buVar.h = userInfoBean.o == 1;
        int i = userInfoBean.f9488b;
        if (i == 1) {
            buVar.f9740b = (byte) 1;
        } else if (i == 2) {
            buVar.f9740b = (byte) 4;
        } else if (i == 3) {
            buVar.f9740b = (byte) 2;
        } else if (i == 4) {
            buVar.f9740b = (byte) 3;
        } else if (i == 8) {
            buVar.f9740b = (byte) 8;
        } else {
            if (i < 10 || i >= 20) {
                al.e("unknown uinfo type %d ", Integer.valueOf(i));
                return null;
            }
            buVar.f9740b = (byte) i;
        }
        HashMap hashMap = new HashMap();
        buVar.f9744f = hashMap;
        if (userInfoBean.p >= 0) {
            StringBuilder sb = new StringBuilder();
            sb.append(userInfoBean.p);
            hashMap.put("C01", sb.toString());
        }
        if (userInfoBean.q >= 0) {
            Map<String, String> map = buVar.f9744f;
            StringBuilder sb2 = new StringBuilder();
            sb2.append(userInfoBean.q);
            map.put("C02", sb2.toString());
        }
        Map<String, String> map2 = userInfoBean.r;
        if (map2 != null && map2.size() > 0) {
            for (Map.Entry<String, String> entry : userInfoBean.r.entrySet()) {
                buVar.f9744f.put("C03_" + entry.getKey(), entry.getValue());
            }
        }
        Map<String, String> map3 = userInfoBean.s;
        if (map3 != null && map3.size() > 0) {
            for (Map.Entry<String, String> entry2 : userInfoBean.s.entrySet()) {
                buVar.f9744f.put("C04_" + entry2.getKey(), entry2.getValue());
            }
        }
        Map<String, String> map4 = buVar.f9744f;
        StringBuilder sb3 = new StringBuilder();
        sb3.append(!userInfoBean.l);
        map4.put("A36", sb3.toString());
        Map<String, String> map5 = buVar.f9744f;
        StringBuilder sb4 = new StringBuilder();
        sb4.append(userInfoBean.f9493g);
        map5.put("F02", sb4.toString());
        Map<String, String> map6 = buVar.f9744f;
        StringBuilder sb5 = new StringBuilder();
        sb5.append(userInfoBean.h);
        map6.put("F03", sb5.toString());
        buVar.f9744f.put("F04", userInfoBean.j);
        Map<String, String> map7 = buVar.f9744f;
        StringBuilder sb6 = new StringBuilder();
        sb6.append(userInfoBean.i);
        map7.put("F05", sb6.toString());
        buVar.f9744f.put("F06", userInfoBean.m);
        Map<String, String> map8 = buVar.f9744f;
        StringBuilder sb7 = new StringBuilder();
        sb7.append(userInfoBean.k);
        map8.put("F10", sb7.toString());
        al.c("summary type %d vm:%d", Byte.valueOf(buVar.f9740b), Integer.valueOf(buVar.f9744f.size()));
        return buVar;
    }

    public static <T extends m> T a(byte[] bArr, Class<T> cls) {
        if (bArr != null && bArr.length > 0) {
            try {
                T newInstance = cls.newInstance();
                k kVar = new k(bArr);
                kVar.a("utf-8");
                newInstance.a(kVar);
                return newInstance;
            } catch (Throwable th) {
                if (!al.b(th)) {
                    th.printStackTrace();
                }
            }
        }
        return null;
    }

    public static byte[] a(m mVar) {
        try {
            l lVar = new l();
            lVar.a("utf-8");
            mVar.a(lVar);
            byte[] bArr = new byte[lVar.f9774a.position()];
            System.arraycopy(lVar.f9774a.array(), 0, bArr, 0, lVar.f9774a.position());
            return bArr;
        } catch (Throwable th) {
            if (al.b(th)) {
                return null;
            }
            th.printStackTrace();
            return null;
        }
    }

    public static byte[] a(Object obj) {
        try {
            e eVar = new e();
            eVar.b();
            eVar.a("utf-8");
            eVar.c();
            eVar.b("RqdServer");
            eVar.c("sync");
            eVar.a("detail", obj);
            return eVar.a();
        } catch (Throwable th) {
            if (al.b(th)) {
                return null;
            }
            th.printStackTrace();
            return null;
        }
    }
}
