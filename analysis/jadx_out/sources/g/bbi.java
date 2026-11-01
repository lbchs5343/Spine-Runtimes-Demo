package g;

import android.content.SharedPreferences;
import android.text.TextUtils;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/* loaded from: classes.dex */
public final class bbi implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ com.tencent.bugly.proguard.u f11222a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f11223b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ int f11224c;

    public /* synthetic */ bbi(com.tencent.bugly.proguard.u uVar, int i, int i2) {
        this.f11223b = i2;
        this.f11222a = uVar;
        this.f11224c = i;
    }

    @Override // java.lang.Runnable
    public final void run() {
        String str;
        List<com.tencent.bugly.proguard.t> d2;
        Map map;
        Map map2;
        String str2;
        Map map3;
        String str3;
        com.tencent.bugly.proguard.t tVar;
        String str4;
        Map map4;
        String str5;
        Map map5;
        boolean c2;
        SharedPreferences sharedPreferences;
        String str6;
        switch (this.f11223b) {
            case 0:
                com.tencent.bugly.proguard.u uVar = this.f11222a;
                try {
                    str = uVar.f9805d;
                    if (TextUtils.isEmpty(str)) {
                        break;
                    } else {
                        d2 = uVar.d(1004);
                        if (d2 == null) {
                            d2 = new ArrayList();
                        }
                        map = uVar.f9806e;
                        if (map.get(1004) == null) {
                            HashMap hashMap = new HashMap();
                            map5 = uVar.f9806e;
                            map5.put(1004, hashMap);
                        }
                        map2 = uVar.f9806e;
                        Map map6 = (Map) map2.get(1004);
                        str2 = uVar.f9805d;
                        Object obj = map6.get(str2);
                        int i = this.f11224c;
                        if (obj == null) {
                            tVar = new com.tencent.bugly.proguard.t();
                            tVar.f9795a = 1004;
                            tVar.f9801g = com.tencent.bugly.proguard.u.f9802a;
                            str4 = uVar.f9805d;
                            tVar.f9796b = str4;
                            tVar.f9800f = com.tencent.bugly.proguard.aa.b().o;
                            tVar.f9799e = com.tencent.bugly.proguard.aa.b().h;
                            tVar.f9797c = System.currentTimeMillis();
                            tVar.f9798d = i;
                            map4 = uVar.f9806e;
                            Map map7 = (Map) map4.get(1004);
                            str5 = uVar.f9805d;
                            map7.put(str5, tVar);
                        } else {
                            map3 = uVar.f9806e;
                            Map map8 = (Map) map3.get(1004);
                            str3 = uVar.f9805d;
                            tVar = (com.tencent.bugly.proguard.t) map8.get(str3);
                            tVar.f9798d = i;
                        }
                        ArrayList arrayList = new ArrayList();
                        boolean z = false;
                        for (com.tencent.bugly.proguard.t tVar2 : d2) {
                            if (com.tencent.bugly.proguard.u.a(tVar2, tVar)) {
                                tVar2.f9798d = tVar.f9798d;
                                z = true;
                            }
                            if (com.tencent.bugly.proguard.u.b(tVar2, tVar)) {
                                arrayList.add(tVar2);
                            }
                        }
                        d2.removeAll(arrayList);
                        if (!z) {
                            d2.add(tVar);
                        }
                        uVar.a(1004, (int) d2);
                        break;
                    }
                } catch (Exception unused) {
                    com.tencent.bugly.proguard.al.e("saveCrashRecord failed", new Object[0]);
                    return;
                }
            default:
                com.tencent.bugly.proguard.u uVar2 = this.f11222a;
                int i2 = this.f11224c;
                c2 = uVar2.c(i2);
                sharedPreferences = uVar2.f9807f;
                SharedPreferences.Editor edit = sharedPreferences.edit();
                StringBuilder sb = new StringBuilder();
                sb.append(i2);
                sb.append("_");
                str6 = uVar2.f9805d;
                sb.append(str6);
                edit.putBoolean(sb.toString(), !c2).commit();
                break;
        }
    }
}
