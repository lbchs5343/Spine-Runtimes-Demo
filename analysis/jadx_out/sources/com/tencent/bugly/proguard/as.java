package com.tencent.bugly.proguard;

import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.os.Environment;
import android.text.TextUtils;
import android.util.Pair;
import com.bykv.vk.component.ttvideo.mediakit.medialoader.AVMDLDataLoader;
import com.bytedance.sdk.openadsdk.downloadnew.core.TTDownloadField;
import com.ss.android.downloadad.api.constant.AdBaseConstants;
import com.tencent.bugly.BuglyStrategy;
import com.tencent.bugly.crashreport.common.info.PlugInBean;
import com.tencent.bugly.crashreport.common.strategy.StrategyBean;
import com.tencent.bugly.crashreport.crash.CrashDetailBean;
import com.tencent.bugly.proguard.ag;
import g.ada;
import g.awf;
import g.caw;
import g.ckx;
import g.dsq;
import g.eby;
import g.exp;
import g.tn;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.net.URLEncoder;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Date;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.regex.Pattern;

/* loaded from: classes.dex */
public final class as {

    /* renamed from: a, reason: collision with root package name */
    public static int f9613a;
    private static final Map<Integer, Pair<String, String>> h;
    private static final ArrayList<exp> i;
    private static final Map<Integer, Integer> j;
    private static final Map<Integer, String> k;
    private static final Map<Integer, String> l;

    /* renamed from: b, reason: collision with root package name */
    protected final Context f9614b;

    /* renamed from: c, reason: collision with root package name */
    protected final ai f9615c;

    /* renamed from: d, reason: collision with root package name */
    protected final w f9616d;

    /* renamed from: e, reason: collision with root package name */
    protected final ac f9617e;

    /* renamed from: f, reason: collision with root package name */
    protected aw f9618f;

    /* renamed from: g, reason: collision with root package name */
    protected BuglyStrategy.a f9619g;

    static {
        dsq dsqVar = new dsq();
        dsqVar.put(3, new Pair("203", "103"));
        dsqVar.put(7, new Pair("208", "108"));
        dsqVar.put(0, new Pair("200", "100"));
        dsqVar.put(1, new Pair("201", "101"));
        dsqVar.put(2, new Pair("202", "102"));
        dsqVar.put(4, new Pair("204", "104"));
        dsqVar.put(6, new Pair("206", "106"));
        dsqVar.put(5, new Pair("207", "107"));
        h = dsqVar;
        ckx ckxVar = new ckx();
        ckxVar.add(new exp(3, 0));
        ckxVar.add(new exp(7, 1));
        ckxVar.add(new exp(2, 2));
        ckxVar.add(new exp(0, 3));
        ckxVar.add(new exp(1, 6));
        ckxVar.add(new exp(4, 7));
        ckxVar.add(new exp(5, 4));
        ckxVar.add(new exp(6, 5));
        i = ckxVar;
        caw cawVar = new caw();
        cawVar.put(3, 4);
        cawVar.put(7, 7);
        cawVar.put(2, 1);
        cawVar.put(0, 0);
        cawVar.put(1, 2);
        cawVar.put(4, 3);
        cawVar.put(5, 5);
        cawVar.put(6, 6);
        j = cawVar;
        dsq dsqVar2 = new dsq();
        dsqVar2.put(3, "BuglyAnrCrash");
        dsqVar2.put(0, "BuglyJavaCrash");
        dsqVar2.put(1, "BuglyNativeCrash");
        k = dsqVar2;
        dsq dsqVar3 = new dsq();
        dsqVar3.put(3, "BuglyAnrCrashReport");
        dsqVar3.put(0, "BuglyJavaCrashReport");
        dsqVar3.put(1, "BuglyNativeCrashReport");
        l = dsqVar3;
    }

    public as(Context context, ai aiVar, w wVar, ac acVar, BuglyStrategy.a aVar) {
        f9613a = 1004;
        this.f9614b = context;
        this.f9615c = aiVar;
        this.f9616d = wVar;
        this.f9617e = acVar;
        this.f9619g = aVar;
        this.f9618f = null;
    }

    private static CrashDetailBean a(Cursor cursor) {
        if (cursor == null) {
            return null;
        }
        try {
            byte[] blob = cursor.getBlob(cursor.getColumnIndex("_dt"));
            if (blob == null) {
                return null;
            }
            long j2 = cursor.getLong(cursor.getColumnIndex(ada.COLUMN_ID));
            CrashDetailBean crashDetailBean = (CrashDetailBean) ap.a(blob, CrashDetailBean.CREATOR);
            if (crashDetailBean == null) {
                return crashDetailBean;
            }
            crashDetailBean.f9504a = j2;
            return crashDetailBean;
        } catch (Throwable th) {
            if (!al.a(th)) {
                th.printStackTrace();
            }
            return null;
        }
    }

    private static CrashDetailBean a(List<ar> list, CrashDetailBean crashDetailBean) {
        CrashDetailBean crashDetailBean2;
        List<CrashDetailBean> c2;
        if (list.isEmpty()) {
            return crashDetailBean;
        }
        ArrayList arrayList = new ArrayList(10);
        for (ar arVar : list) {
            if (arVar.f9611e) {
                arrayList.add(arVar);
            }
        }
        if (arrayList.isEmpty() || (c2 = c(arrayList)) == null || c2.isEmpty()) {
            crashDetailBean2 = null;
        } else {
            Collections.sort(c2);
            crashDetailBean2 = c2.get(0);
            a(crashDetailBean2, c2);
        }
        if (crashDetailBean2 == null) {
            crashDetailBean.j = true;
            crashDetailBean.t = 0;
            crashDetailBean.s = "";
            crashDetailBean2 = crashDetailBean;
        }
        b(crashDetailBean2, list);
        if (crashDetailBean2.r != crashDetailBean.r) {
            String str = crashDetailBean2.s;
            StringBuilder sb = new StringBuilder();
            sb.append(crashDetailBean.r);
            if (!str.contains(sb.toString())) {
                crashDetailBean2.t++;
                StringBuilder sb2 = new StringBuilder();
                sb2.append(crashDetailBean2.s);
                crashDetailBean2.s = tn.f(crashDetailBean.r, "\n", sb2);
            }
        }
        return crashDetailBean2;
    }

    private static bn a(String str, Context context, String str2) {
        FileInputStream fileInputStream;
        if (str2 == null || context == null) {
            al.d("rqdp{  createZipAttachment sourcePath == null || context == null ,pls check}", new Object[0]);
            return null;
        }
        al.c("zip %s", str2);
        File file = new File(str2);
        File file2 = new File(context.getCacheDir(), str);
        if (!ap.a(file, file2)) {
            al.d("zip fail!", new Object[0]);
            return null;
        }
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        try {
            fileInputStream = new FileInputStream(file2);
        } catch (Throwable th) {
            th = th;
            fileInputStream = null;
        }
        try {
            byte[] bArr = new byte[4096];
            while (true) {
                int read = fileInputStream.read(bArr);
                if (read <= 0) {
                    break;
                }
                byteArrayOutputStream.write(bArr, 0, read);
                byteArrayOutputStream.flush();
            }
            byte[] byteArray = byteArrayOutputStream.toByteArray();
            al.c("read bytes :%d", Integer.valueOf(byteArray.length));
            bn bnVar = new bn((byte) 2, file2.getName(), byteArray);
            try {
                fileInputStream.close();
            } catch (IOException e2) {
                if (!al.a(e2)) {
                    e2.printStackTrace();
                }
            }
            if (file2.exists()) {
                al.c("del tmp", new Object[0]);
                file2.delete();
            }
            return bnVar;
        } catch (Throwable th2) {
            th = th2;
            try {
                if (!al.a(th)) {
                    th.printStackTrace();
                }
                if (fileInputStream != null) {
                    try {
                        fileInputStream.close();
                    } catch (IOException e3) {
                        if (!al.a(e3)) {
                            e3.printStackTrace();
                        }
                    }
                }
                if (file2.exists()) {
                    al.c("del tmp", new Object[0]);
                    file2.delete();
                }
                return null;
            } catch (Throwable th3) {
                if (fileInputStream != null) {
                    try {
                        fileInputStream.close();
                    } catch (IOException e4) {
                        if (!al.a(e4)) {
                            e4.printStackTrace();
                        }
                    }
                }
                if (file2.exists()) {
                    al.c("del tmp", new Object[0]);
                    file2.delete();
                }
                throw th3;
            }
        }
    }

    private static bo a(Context context, CrashDetailBean crashDetailBean, aa aaVar) {
        ArrayList<bl> arrayList = null;
        if (context == null || crashDetailBean == null || aaVar == null) {
            al.d("enExp args == null", new Object[0]);
            return null;
        }
        bo boVar = new bo();
        boVar.f9707a = e(crashDetailBean);
        boVar.f9708b = crashDetailBean.r;
        boVar.f9709c = crashDetailBean.n;
        boVar.f9710d = crashDetailBean.o;
        boVar.f9711e = crashDetailBean.p;
        boVar.f9713g = crashDetailBean.q;
        boVar.h = crashDetailBean.z;
        boVar.i = crashDetailBean.f9506c;
        boVar.j = null;
        boVar.l = crashDetailBean.m;
        boVar.m = crashDetailBean.f9508e;
        boVar.f9712f = crashDetailBean.B;
        boVar.n = null;
        Map<String, PlugInBean> map = crashDetailBean.h;
        if (map != null && !map.isEmpty()) {
            arrayList = new ArrayList<>(crashDetailBean.h.size());
            for (Map.Entry<String, PlugInBean> entry : crashDetailBean.h.entrySet()) {
                bl blVar = new bl();
                blVar.f9695a = entry.getValue().f9494a;
                blVar.f9697c = entry.getValue().f9496c;
                blVar.f9699e = entry.getValue().f9495b;
                arrayList.add(blVar);
            }
        }
        boVar.p = arrayList;
        al.c("libInfo %s", boVar.o);
        ArrayList<bn> arrayList2 = new ArrayList<>(20);
        a(arrayList2, crashDetailBean);
        a(arrayList2, crashDetailBean.w);
        b(arrayList2, crashDetailBean.x);
        c(arrayList2, crashDetailBean.Z);
        a(arrayList2, crashDetailBean.aa, context);
        a(arrayList2, crashDetailBean.y);
        a(arrayList2, crashDetailBean, context);
        b(arrayList2, crashDetailBean, context);
        a(arrayList2, aaVar.L);
        b(arrayList2, crashDetailBean.Y);
        boVar.q = arrayList2;
        if (crashDetailBean.j) {
            boVar.k = crashDetailBean.t;
        }
        boVar.r = a(crashDetailBean, aaVar);
        boVar.s = new HashMap();
        Map<String, String> map2 = crashDetailBean.S;
        if (map2 != null && map2.size() > 0) {
            boVar.s.putAll(crashDetailBean.S);
            al.a("setted message size %d", Integer.valueOf(boVar.s.size()));
        }
        Map<String, String> map3 = boVar.s;
        al.c("pss:" + crashDetailBean.I + " vss:" + crashDetailBean.J + " javaHeap:" + crashDetailBean.K, new Object[0]);
        StringBuilder sb = new StringBuilder();
        sb.append(crashDetailBean.I);
        map3.put("SDK_UPLOAD_U1", sb.toString());
        StringBuilder sb2 = new StringBuilder();
        sb2.append(crashDetailBean.J);
        map3.put("SDK_UPLOAD_U2", sb2.toString());
        StringBuilder sb3 = new StringBuilder();
        sb3.append(crashDetailBean.K);
        map3.put("SDK_UPLOAD_U3", sb3.toString());
        al.c("%s rid:%s sess:%s ls:%ds isR:%b isF:%b isM:%b isN:%b mc:%d ,%s ,isUp:%b ,vm:%d", crashDetailBean.n, crashDetailBean.f9506c, aaVar.d(), Long.valueOf((crashDetailBean.r - crashDetailBean.Q) / 1000), Boolean.valueOf(crashDetailBean.k), Boolean.valueOf(crashDetailBean.R), Boolean.valueOf(crashDetailBean.j), Boolean.valueOf(crashDetailBean.f9505b == 1), Integer.valueOf(crashDetailBean.t), crashDetailBean.s, Boolean.valueOf(crashDetailBean.f9507d), Integer.valueOf(boVar.r.size()));
        return boVar;
    }

    private static bp a(Context context, List<CrashDetailBean> list, aa aaVar) {
        if (context == null || list == null || list.size() == 0 || aaVar == null) {
            al.d("enEXPPkg args == null!", new Object[0]);
            return null;
        }
        bp bpVar = new bp();
        bpVar.f9715a = new ArrayList<>();
        Iterator<CrashDetailBean> it = list.iterator();
        while (it.hasNext()) {
            bpVar.f9715a.add(a(context, it.next(), aaVar));
        }
        return bpVar;
    }

    public static List<CrashDetailBean> a() {
        StrategyBean c2 = ac.a().c();
        if (c2 == null) {
            al.d("have not synced remote!", new Object[0]);
            return null;
        }
        if (!c2.f9502f) {
            al.d("Crashreport remote closed, please check your APP ID correct and Version available, then uninstall and reinstall your app.", new Object[0]);
            al.b("[init] WARNING! Crashreport closed by server, please check your APP ID correct and Version available, then uninstall and reinstall your app.", new Object[0]);
            return null;
        }
        long currentTimeMillis = System.currentTimeMillis();
        long b2 = ap.b();
        List<ar> b3 = b();
        al.c("Size of crash list loaded from DB: %s", Integer.valueOf(b3.size()));
        if (b3.size() <= 0) {
            return null;
        }
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        arrayList.addAll(a(b3));
        b3.removeAll(arrayList);
        Iterator<ar> it = b3.iterator();
        while (it.hasNext()) {
            ar next = it.next();
            long j2 = next.f9608b;
            if (j2 < b2 - at.j) {
                arrayList2.add(next);
                it.remove();
                arrayList.add(next);
            } else if (next.f9610d) {
                if (j2 >= currentTimeMillis - AdBaseConstants.DEFAULT_DELAY_TIMESTAMP) {
                    it.remove();
                } else if (!next.f9611e) {
                    it.remove();
                    arrayList.add(next);
                }
            } else if (next.f9612f >= 3 && j2 < currentTimeMillis - AdBaseConstants.DEFAULT_DELAY_TIMESTAMP) {
                it.remove();
                arrayList.add(next);
            }
        }
        b(arrayList2);
        if (arrayList.size() > 0) {
            d(arrayList);
        }
        ArrayList arrayList3 = new ArrayList();
        List<CrashDetailBean> c3 = c(b3);
        if (c3 != null && c3.size() > 0) {
            String str = aa.b().o;
            Iterator<CrashDetailBean> it2 = c3.iterator();
            while (it2.hasNext()) {
                CrashDetailBean next2 = it2.next();
                if (!str.equals(next2.f9509f)) {
                    it2.remove();
                    arrayList3.add(next2);
                }
            }
        }
        if (arrayList3.size() > 0) {
            e(arrayList3);
        }
        return c3;
    }

    private static List<ar> a(List<ar> list) {
        if (list == null || list.size() == 0) {
            return null;
        }
        long currentTimeMillis = System.currentTimeMillis();
        ArrayList arrayList = new ArrayList();
        for (ar arVar : list) {
            if (arVar.f9610d && arVar.f9608b <= currentTimeMillis - AdBaseConstants.DEFAULT_DELAY_TIMESTAMP) {
                arrayList.add(arVar);
            }
        }
        return arrayList;
    }

    private static Map<String, String> a(CrashDetailBean crashDetailBean, aa aaVar) {
        HashMap hashMap = new HashMap(30);
        try {
            StringBuilder sb = new StringBuilder();
            sb.append(crashDetailBean.C);
            hashMap.put("A9", sb.toString());
            StringBuilder sb2 = new StringBuilder();
            sb2.append(crashDetailBean.D);
            hashMap.put("A11", sb2.toString());
            StringBuilder sb3 = new StringBuilder();
            sb3.append(crashDetailBean.E);
            hashMap.put("A10", sb3.toString());
            hashMap.put("A23", crashDetailBean.f9509f);
            aaVar.getClass();
            hashMap.put("A7", "");
            hashMap.put("A6", aa.n());
            hashMap.put("A5", aaVar.m());
            hashMap.put("A22", aaVar.g());
            StringBuilder sb4 = new StringBuilder();
            sb4.append(crashDetailBean.G);
            hashMap.put("A2", sb4.toString());
            StringBuilder sb5 = new StringBuilder();
            sb5.append(crashDetailBean.F);
            hashMap.put("A1", sb5.toString());
            hashMap.put("A24", aaVar.k);
            StringBuilder sb6 = new StringBuilder();
            sb6.append(crashDetailBean.H);
            hashMap.put("A17", sb6.toString());
            hashMap.put("A25", aaVar.g());
            hashMap.put("A15", aaVar.q());
            StringBuilder sb7 = new StringBuilder();
            sb7.append(aaVar.r());
            hashMap.put("A13", sb7.toString());
            hashMap.put("A34", crashDetailBean.A);
            if (aaVar.G != null) {
                hashMap.put("productIdentify", aaVar.G);
            }
            hashMap.put("A26", URLEncoder.encode(crashDetailBean.L, "utf-8"));
            if (crashDetailBean.f9505b == 1) {
                hashMap.put("A27", crashDetailBean.O);
                hashMap.put("A28", crashDetailBean.N);
                StringBuilder sb8 = new StringBuilder();
                sb8.append(crashDetailBean.k);
                hashMap.put("A29", sb8.toString());
            }
            hashMap.put("A30", crashDetailBean.P);
            StringBuilder sb9 = new StringBuilder();
            sb9.append(crashDetailBean.Q);
            hashMap.put("A18", sb9.toString());
            StringBuilder sb10 = new StringBuilder();
            sb10.append(true ^ crashDetailBean.R);
            hashMap.put("A36", sb10.toString());
            StringBuilder sb11 = new StringBuilder();
            sb11.append(aaVar.z);
            hashMap.put("F02", sb11.toString());
            StringBuilder sb12 = new StringBuilder();
            sb12.append(aaVar.A);
            hashMap.put("F03", sb12.toString());
            hashMap.put("F04", aaVar.d());
            StringBuilder sb13 = new StringBuilder();
            sb13.append(aaVar.B);
            hashMap.put("F05", sb13.toString());
            hashMap.put("F06", aaVar.y);
            hashMap.put("F08", aaVar.E);
            hashMap.put("F09", aaVar.F);
            StringBuilder sb14 = new StringBuilder();
            sb14.append(aaVar.C);
            hashMap.put("F10", sb14.toString());
            a(hashMap, crashDetailBean);
            return hashMap;
        } catch (Exception e2) {
            e2.printStackTrace();
            al.a(e2);
            return hashMap;
        }
    }

    private static void a(CrashDetailBean crashDetailBean, List<CrashDetailBean> list) {
        String[] split;
        StringBuilder sb = new StringBuilder(TTDownloadField.CALL_DOWNLOAD_MODEL_SET_APP_NAME);
        for (int i2 = 1; i2 < list.size(); i2++) {
            String str = list.get(i2).s;
            if (str != null && (split = str.split("\n")) != null) {
                for (String str2 : split) {
                    if (!crashDetailBean.s.contains(str2)) {
                        crashDetailBean.t++;
                        sb.append(str2);
                        sb.append("\n");
                    }
                }
            }
        }
        crashDetailBean.s += sb.toString();
    }

    private static void a(CrashDetailBean crashDetailBean, Map<String, String> map) {
        String value;
        if (map == null || map.isEmpty()) {
            al.d("extra map is empty. CrashBean won't have userDatas.", new Object[0]);
            return;
        }
        crashDetailBean.S = new LinkedHashMap(map.size());
        for (Map.Entry<String, String> entry : map.entrySet()) {
            if (!ap.b(entry.getKey())) {
                String key = entry.getKey();
                if (key.length() > 100) {
                    key = key.substring(0, 100);
                    al.d("setted key length is over limit %d substring to %s", 100, key);
                }
                if (ap.b(entry.getValue()) || entry.getValue().length() <= 100000) {
                    value = entry.getValue();
                } else {
                    value = entry.getValue().substring(entry.getValue().length() - BuglyStrategy.a.MAX_USERDATA_VALUE_LENGTH);
                    al.d("setted %s value length is over limit %d substring", key, Integer.valueOf(BuglyStrategy.a.MAX_USERDATA_VALUE_LENGTH));
                }
                crashDetailBean.S.put(key, value);
                al.a("add setted key %s value size:%d", key, Integer.valueOf(value.length()));
            }
        }
    }

    public static void a(String str, String str2, String str3, String str4, String str5, CrashDetailBean crashDetailBean) {
        String str6;
        aa b2 = aa.b();
        if (b2 == null) {
            return;
        }
        al.e("#++++++++++Record By Bugly++++++++++#", new Object[0]);
        al.e("# You can use Bugly(http:\\\\bugly.qq.com) to get more Crash Detail!", new Object[0]);
        al.e("# PKG NAME: %s", b2.f9536c);
        al.e("# APP VER: %s", b2.o);
        al.e("# SDK VER: %s", b2.h);
        al.e("# LAUNCH TIME: %s", ap.a(new Date(aa.b().f9533a)));
        al.e("# CRASH TYPE: %s", str);
        al.e("# CRASH TIME: %s", str2);
        al.e("# CRASH PROCESS: %s", str3);
        al.e("# CRASH FOREGROUND: %s", Boolean.valueOf(b2.a()));
        al.e("# CRASH THREAD: %s", str4);
        if (crashDetailBean != null) {
            al.e("# REPORT ID: %s", crashDetailBean.f9506c);
            al.e("# CRASH DEVICE: %s %s", b2.h(), b2.r().booleanValue() ? "ROOTED" : "UNROOT");
            al.e("# RUNTIME AVAIL RAM:%d ROM:%d SD:%d", Long.valueOf(crashDetailBean.C), Long.valueOf(crashDetailBean.D), Long.valueOf(crashDetailBean.E));
            al.e("# RUNTIME TOTAL RAM:%d ROM:%d SD:%d", Long.valueOf(crashDetailBean.F), Long.valueOf(crashDetailBean.G), Long.valueOf(crashDetailBean.H));
            if (!ap.b(crashDetailBean.O)) {
                al.e("# EXCEPTION FIRED BY %s %s", crashDetailBean.O, crashDetailBean.N);
            } else if (crashDetailBean.f9505b == 3) {
                if (crashDetailBean.T == null) {
                    str6 = "null";
                } else {
                    str6 = crashDetailBean.T.get("BUGLY_CR_01");
                }
                al.e("# EXCEPTION ANR MESSAGE:\n %s", str6);
            }
        }
        if (!ap.b(str5)) {
            al.e("# CRASH STACK: ", new Object[0]);
            al.e(str5, new Object[0]);
        }
        al.e("#++++++++++++++++++++++++++++++++++++++++++#", new Object[0]);
    }

    private static void a(ArrayList<bn> arrayList, CrashDetailBean crashDetailBean) {
        String str;
        if (crashDetailBean.j && (str = crashDetailBean.s) != null && str.length() > 0) {
            try {
                arrayList.add(new bn((byte) 1, "alltimes.txt", crashDetailBean.s.getBytes("utf-8")));
            } catch (Exception e2) {
                e2.printStackTrace();
                al.a(e2);
            }
        }
    }

    private static void a(ArrayList<bn> arrayList, CrashDetailBean crashDetailBean, Context context) {
        bn a2;
        if (crashDetailBean.f9505b != 3) {
            return;
        }
        al.c("crashBean.anrMessages:%s", crashDetailBean.T);
        try {
            Map<String, String> map = crashDetailBean.T;
            if (map != null && map.containsKey("BUGLY_CR_01")) {
                if (!TextUtils.isEmpty(crashDetailBean.T.get("BUGLY_CR_01"))) {
                    arrayList.add(new bn((byte) 1, "anrMessage.txt", crashDetailBean.T.get("BUGLY_CR_01").getBytes("utf-8")));
                    al.c("attach anr message", new Object[0]);
                }
                crashDetailBean.T.remove("BUGLY_CR_01");
            }
            String str = crashDetailBean.v;
            if (str == null || (a2 = a("trace.zip", context, str)) == null) {
                return;
            }
            al.c("attach traces", new Object[0]);
            arrayList.add(a2);
        } catch (Exception e2) {
            e2.printStackTrace();
            al.a(e2);
        }
    }

    private static void a(ArrayList<bn> arrayList, String str) {
        if (str != null) {
            try {
                arrayList.add(new bn((byte) 1, "log.txt", str.getBytes("utf-8")));
            } catch (Exception e2) {
                e2.printStackTrace();
                al.a(e2);
            }
        }
    }

    private static void a(ArrayList<bn> arrayList, String str, Context context) {
        if (str != null) {
            try {
                bn a2 = a("backupRecord.zip", context, str);
                if (a2 != null) {
                    al.c("attach backup record", new Object[0]);
                    arrayList.add(a2);
                }
            } catch (Exception e2) {
                al.a(e2);
            }
        }
    }

    private static void a(ArrayList<bn> arrayList, List<String> list) {
        if (list == null || list.isEmpty()) {
            return;
        }
        StringBuilder sb = new StringBuilder();
        Iterator<String> it = list.iterator();
        while (it.hasNext()) {
            sb.append(it.next());
        }
        try {
            arrayList.add(new bn((byte) 1, "martianlog.txt", sb.toString().getBytes("utf-8")));
            al.c("attach pageTracingList", new Object[0]);
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    private static void a(ArrayList<bn> arrayList, byte[] bArr) {
        if (bArr == null || bArr.length <= 0) {
            return;
        }
        try {
            bn bnVar = new bn((byte) 2, "buglylog.zip", bArr);
            al.c("attach user log", new Object[0]);
            arrayList.add(bnVar);
        } catch (Exception e2) {
            al.a(e2);
        }
    }

    public static /* synthetic */ void a(List list, boolean z, long j2, String str, String str2) {
        ag agVar;
        if (list == null || list.isEmpty()) {
            return;
        }
        ArrayList arrayList = new ArrayList();
        Iterator it = list.iterator();
        while (it.hasNext()) {
            CrashDetailBean crashDetailBean = (CrashDetailBean) it.next();
            String str3 = l.get(Integer.valueOf(crashDetailBean.f9505b));
            if (!TextUtils.isEmpty(str3)) {
                arrayList.add(new ag.c(crashDetailBean.f9506c, str3, crashDetailBean.r, z, j2, str, str2));
            }
        }
        agVar = ag.a.f9557a;
        agVar.a(arrayList);
    }

    private static void a(Map<String, String> map, CrashDetailBean crashDetailBean) {
        if (crashDetailBean.U >= 0) {
            StringBuilder sb = new StringBuilder();
            sb.append(crashDetailBean.U);
            map.put("C01", sb.toString());
        }
        if (crashDetailBean.V >= 0) {
            StringBuilder sb2 = new StringBuilder();
            sb2.append(crashDetailBean.V);
            map.put("C02", sb2.toString());
        }
        Map<String, String> map2 = crashDetailBean.W;
        if (map2 != null && map2.size() > 0) {
            for (Map.Entry<String, String> entry : crashDetailBean.W.entrySet()) {
                map.put("C03_" + entry.getKey(), entry.getValue());
            }
        }
        Map<String, String> map3 = crashDetailBean.X;
        if (map3 == null || map3.size() <= 0) {
            return;
        }
        for (Map.Entry<String, String> entry2 : crashDetailBean.X.entrySet()) {
            map.put("C04_" + entry2.getKey(), entry2.getValue());
        }
    }

    public static void a(boolean z, List<CrashDetailBean> list) {
        if (list != null && list.size() > 0) {
            al.c("up finish update state %b", Boolean.valueOf(z));
            for (CrashDetailBean crashDetailBean : list) {
                al.c("pre uid:%s uc:%d re:%b me:%b", crashDetailBean.f9506c, Integer.valueOf(crashDetailBean.l), Boolean.valueOf(crashDetailBean.f9507d), Boolean.valueOf(crashDetailBean.j));
                int i2 = crashDetailBean.l + 1;
                crashDetailBean.l = i2;
                crashDetailBean.f9507d = z;
                al.c("set uid:%s uc:%d re:%b me:%b", crashDetailBean.f9506c, Integer.valueOf(i2), Boolean.valueOf(crashDetailBean.f9507d), Boolean.valueOf(crashDetailBean.j));
            }
            Iterator<CrashDetailBean> it = list.iterator();
            while (it.hasNext()) {
                at.a().a(it.next());
            }
            al.c("update state size %d", Integer.valueOf(list.size()));
        }
        if (z) {
            return;
        }
        al.b("[crash] upload fail.", new Object[0]);
    }

    private static boolean a(CrashDetailBean crashDetailBean, List<ar> list, List<ar> list2) {
        boolean z = false;
        for (ar arVar : list) {
            if (crashDetailBean.u.equals(arVar.f9609c)) {
                if (arVar.f9611e) {
                    z = true;
                }
                list2.add(arVar);
            }
        }
        return z;
    }

    private static boolean a(String str) {
        String str2 = at.r;
        if (str2 != null && !str2.isEmpty()) {
            try {
                al.c("Crash regular filter for crash stack is: %s", at.r);
                if (Pattern.compile(at.r).matcher(str).find()) {
                    al.d("This crash matches the regular filter string set. It will not be record and upload.", new Object[0]);
                    return true;
                }
            } catch (Exception e2) {
                al.a(e2);
                al.d("Failed to compile " + at.r, new Object[0]);
            }
        }
        return false;
    }

    private static ar b(Cursor cursor) {
        if (cursor == null) {
            return null;
        }
        try {
            ar arVar = new ar();
            arVar.f9607a = cursor.getLong(cursor.getColumnIndex(ada.COLUMN_ID));
            arVar.f9608b = cursor.getLong(cursor.getColumnIndex("_tm"));
            arVar.f9609c = cursor.getString(cursor.getColumnIndex("_s1"));
            arVar.f9610d = cursor.getInt(cursor.getColumnIndex("_up")) == 1;
            arVar.f9611e = cursor.getInt(cursor.getColumnIndex("_me")) == 1;
            arVar.f9612f = cursor.getInt(cursor.getColumnIndex("_uc"));
            return arVar;
        } catch (Throwable th) {
            if (!al.a(th)) {
                th.printStackTrace();
            }
            return null;
        }
    }

    private static List<ar> b() {
        ArrayList arrayList = new ArrayList();
        Cursor cursor = null;
        try {
            Cursor a2 = w.a().a("t_cr", new String[]{ada.COLUMN_ID, "_tm", "_s1", "_up", "_me", "_uc"}, (String) null);
            if (a2 == null) {
                if (a2 != null) {
                    a2.close();
                }
                return null;
            }
            try {
                if (a2.getCount() <= 0) {
                    a2.close();
                    return arrayList;
                }
                StringBuilder sb = new StringBuilder();
                sb.append("_id in (");
                int i2 = 0;
                while (a2.moveToNext()) {
                    ar b2 = b(a2);
                    if (b2 != null) {
                        arrayList.add(b2);
                    } else {
                        try {
                            sb.append(a2.getLong(a2.getColumnIndex(ada.COLUMN_ID)));
                            sb.append(",");
                            i2++;
                        } catch (Throwable unused) {
                            al.d("unknown id!", new Object[0]);
                        }
                    }
                }
                if (sb.toString().contains(",")) {
                    sb = new StringBuilder(sb.substring(0, sb.lastIndexOf(",")));
                }
                sb.append(")");
                String sb2 = sb.toString();
                sb.setLength(0);
                if (i2 > 0) {
                    al.d("deleted %s illegal data %d", "t_cr", Integer.valueOf(w.a().a("t_cr", sb2)));
                }
                a2.close();
                return arrayList;
            } catch (Throwable th) {
                th = th;
                cursor = a2;
                try {
                    if (!al.a(th)) {
                        th.printStackTrace();
                    }
                    return arrayList;
                } finally {
                    if (cursor != null) {
                        cursor.close();
                    }
                }
            }
        } catch (Throwable th2) {
            th = th2;
        }
    }

    private static void b(CrashDetailBean crashDetailBean, List<ar> list) {
        StringBuilder sb = new StringBuilder(64);
        for (ar arVar : list) {
            if (!arVar.f9611e && !arVar.f9610d) {
                String str = crashDetailBean.s;
                StringBuilder sb2 = new StringBuilder();
                sb2.append(arVar.f9608b);
                if (!str.contains(sb2.toString())) {
                    crashDetailBean.t++;
                    sb.append(arVar.f9608b);
                    sb.append("\n");
                }
            }
        }
        crashDetailBean.s += sb.toString();
    }

    private static void b(ArrayList<bn> arrayList, CrashDetailBean crashDetailBean, Context context) {
        String str;
        if (crashDetailBean.f9505b == 1 && (str = crashDetailBean.v) != null) {
            try {
                bn a2 = a("tomb.zip", context, str);
                if (a2 != null) {
                    al.c("attach tombs", new Object[0]);
                    arrayList.add(a2);
                }
            } catch (Exception e2) {
                al.a(e2);
            }
        }
    }

    private static void b(ArrayList<bn> arrayList, String str) {
        if (str != null) {
            try {
                arrayList.add(new bn((byte) 1, "jniLog.txt", str.getBytes("utf-8")));
            } catch (Exception e2) {
                e2.printStackTrace();
                al.a(e2);
            }
        }
    }

    private static void b(ArrayList<bn> arrayList, byte[] bArr) {
        if (bArr == null || bArr.length <= 0) {
            return;
        }
        try {
            arrayList.add(new bn((byte) 1, "userExtraByteData", bArr));
            al.c("attach extraData", new Object[0]);
        } catch (Exception e2) {
            al.a(e2);
        }
    }

    private static void b(List<ar> list) {
        ag agVar;
        List<CrashDetailBean> c2 = c(list);
        if (c2 == null || c2.isEmpty()) {
            return;
        }
        ArrayList arrayList = new ArrayList();
        for (CrashDetailBean crashDetailBean : c2) {
            String str = l.get(Integer.valueOf(crashDetailBean.f9505b));
            if (!TextUtils.isEmpty(str)) {
                al.c("find expired data,crashId:%s eventType:%s", crashDetailBean.f9506c, str);
                arrayList.add(new ag.c(crashDetailBean.f9506c, str, crashDetailBean.r, false, 0L, "expired", null));
            }
        }
        agVar = ag.a.f9557a;
        agVar.a(arrayList);
    }

    private boolean b(CrashDetailBean crashDetailBean, List<ar> list, List<ar> list2) {
        int i2 = crashDetailBean.f9505b;
        if (!(!p.f9780c ? ((i2 == 3) || (i2 == 0 || i2 == 1)) ? at.f9623e : true : false)) {
            return false;
        }
        ArrayList arrayList = new ArrayList(10);
        if (!a(crashDetailBean, list, arrayList)) {
            try {
                if (arrayList.size() >= at.f9622d) {
                }
            } catch (Exception e2) {
                al.a(e2);
                al.d("Failed to merge crash.", new Object[0]);
            }
            return false;
        }
        al.a("same crash occur too much do merged!", new Object[0]);
        CrashDetailBean a2 = a((List<ar>) arrayList, crashDetailBean);
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            ar arVar = (ar) it.next();
            if (arVar.f9607a != a2.f9504a) {
                list2.add(arVar);
            }
        }
        b(a2);
        d(list2);
        al.b("[crash] save crash success. For this device crash many times, it will not upload crashes immediately", new Object[0]);
        return true;
    }

    private static ContentValues c(CrashDetailBean crashDetailBean) {
        if (crashDetailBean == null) {
            return null;
        }
        try {
            ContentValues contentValues = new ContentValues();
            long j2 = crashDetailBean.f9504a;
            if (j2 > 0) {
                contentValues.put(ada.COLUMN_ID, Long.valueOf(j2));
            }
            contentValues.put("_tm", Long.valueOf(crashDetailBean.r));
            contentValues.put("_s1", crashDetailBean.u);
            contentValues.put("_up", Integer.valueOf(crashDetailBean.f9507d ? 1 : 0));
            contentValues.put("_me", Integer.valueOf(crashDetailBean.j ? 1 : 0));
            contentValues.put("_uc", Integer.valueOf(crashDetailBean.l));
            contentValues.put("_dt", ap.a(crashDetailBean));
            return contentValues;
        } catch (Throwable th) {
            if (!al.a(th)) {
                th.printStackTrace();
            }
            return null;
        }
    }

    private static List<CrashDetailBean> c(List<ar> list) {
        Cursor cursor;
        if (list == null || list.size() == 0) {
            return null;
        }
        StringBuilder o = awf.o("_id in (");
        Iterator<ar> it = list.iterator();
        while (it.hasNext()) {
            o.append(it.next().f9607a);
            o.append(",");
        }
        if (o.toString().contains(",")) {
            o = new StringBuilder(o.substring(0, o.lastIndexOf(",")));
        }
        o.append(")");
        String sb = o.toString();
        o.setLength(0);
        try {
            cursor = w.a().a("t_cr", (String[]) null, sb);
            if (cursor == null) {
                return null;
            }
            try {
                ArrayList arrayList = new ArrayList();
                o.append("_id in (");
                int i2 = 0;
                while (cursor.moveToNext()) {
                    CrashDetailBean a2 = a(cursor);
                    if (a2 != null) {
                        arrayList.add(a2);
                    } else {
                        try {
                            o.append(cursor.getLong(cursor.getColumnIndex(ada.COLUMN_ID)));
                            o.append(",");
                            i2++;
                        } catch (Throwable unused) {
                            al.d("unknown id!", new Object[0]);
                        }
                    }
                }
                if (o.toString().contains(",")) {
                    o = new StringBuilder(o.substring(0, o.lastIndexOf(",")));
                }
                o.append(")");
                String sb2 = o.toString();
                if (i2 > 0) {
                    al.d("deleted %s illegal data %d", "t_cr", Integer.valueOf(w.a().a("t_cr", sb2)));
                }
                cursor.close();
                return arrayList;
            } catch (Throwable th) {
                th = th;
                try {
                    if (!al.a(th)) {
                        th.printStackTrace();
                    }
                    if (cursor != null) {
                        cursor.close();
                    }
                    return null;
                } finally {
                    if (cursor != null) {
                        cursor.close();
                    }
                }
            }
        } catch (Throwable th2) {
            th = th2;
            cursor = null;
        }
    }

    private static void c(ArrayList<bn> arrayList, String str) {
        if (ap.b(str)) {
            return;
        }
        try {
            bn bnVar = new bn((byte) 1, "crashInfos.txt", str.getBytes("utf-8"));
            al.c("attach crash infos", new Object[0]);
            arrayList.add(bnVar);
        } catch (Exception e2) {
            e2.printStackTrace();
            al.a(e2);
        }
    }

    private static void d(List<ar> list) {
        if (list == null || list.size() == 0) {
            return;
        }
        StringBuilder o = awf.o("_id in (");
        Iterator<ar> it = list.iterator();
        while (it.hasNext()) {
            o.append(it.next().f9607a);
            o.append(",");
        }
        StringBuilder sb = new StringBuilder(o.substring(0, o.lastIndexOf(",")));
        sb.append(")");
        String sb2 = sb.toString();
        sb.setLength(0);
        try {
            al.c("deleted %s data %d", "t_cr", Integer.valueOf(w.a().a("t_cr", sb2)));
        } catch (Throwable th) {
            if (al.a(th)) {
                return;
            }
            th.printStackTrace();
        }
    }

    private boolean d(CrashDetailBean crashDetailBean) {
        String absolutePath;
        try {
            al.c("save eup logs", new Object[0]);
            aa b2 = aa.b();
            String str = "#--------\npackage:" + b2.e() + "\nversion:" + b2.o + "\nsdk:" + b2.h + "\nprocess:" + crashDetailBean.A + "\ndate:" + ap.a(new Date(crashDetailBean.r)) + "\ntype:" + crashDetailBean.n + "\nmessage:" + crashDetailBean.o + "\nstack:\n" + crashDetailBean.q + "\neupID:" + crashDetailBean.f9506c + "\n";
            if (at.m != null) {
                File file = new File(at.m);
                if (file.isFile()) {
                    file = file.getParentFile();
                }
                absolutePath = file.getAbsolutePath();
            } else if (Environment.getExternalStorageState().equals("mounted")) {
                absolutePath = Environment.getExternalStorageDirectory().getAbsolutePath() + "/Tencent/" + this.f9614b.getPackageName();
            } else {
                absolutePath = null;
            }
            am.a(absolutePath + "/euplog.txt", str, at.n);
            return true;
        } catch (Throwable th) {
            al.d("rqdp{  save error} %s", th.toString());
            if (!al.a(th)) {
                th.printStackTrace();
            }
            return false;
        }
    }

    private static String e(CrashDetailBean crashDetailBean) {
        try {
            Pair<String, String> pair = h.get(Integer.valueOf(crashDetailBean.f9505b));
            if (pair != null) {
                return crashDetailBean.j ? (String) pair.first : (String) pair.second;
            }
            al.e("crash type error! %d", Integer.valueOf(crashDetailBean.f9505b));
            return "";
        } catch (Exception e2) {
            al.a(e2);
            return "";
        }
    }

    private static void e(List<CrashDetailBean> list) {
        try {
            if (list.size() == 0) {
                return;
            }
            StringBuilder sb = new StringBuilder();
            for (CrashDetailBean crashDetailBean : list) {
                sb.append(" or _id = ");
                sb.append(crashDetailBean.f9504a);
            }
            String sb2 = sb.toString();
            if (sb2.length() > 0) {
                sb2 = sb2.substring(4);
            }
            sb.setLength(0);
            al.c("deleted %s data %d", "t_cr", Integer.valueOf(w.a().a("t_cr", sb2)));
        } catch (Throwable th) {
            if (al.a(th)) {
                return;
            }
            th.printStackTrace();
        }
    }

    public final void a(CrashDetailBean crashDetailBean) {
        int i2 = crashDetailBean.f9505b;
        if (i2 != 0) {
            if (i2 != 1) {
                if (i2 == 3 && !at.a().k()) {
                    return;
                }
            } else if (!at.a().j()) {
                return;
            }
        } else if (!at.a().j()) {
            return;
        }
        if (this.f9618f != null) {
            al.c("Calling 'onCrashHandleEnd' of RQD crash listener.", new Object[0]);
        }
    }

    public final void a(List<CrashDetailBean> list, long j2, boolean z, boolean z2, boolean z3) {
        if (!aa.a(this.f9614b).f9539f) {
            al.d("warn: not upload process", new Object[0]);
            return;
        }
        ai aiVar = this.f9615c;
        if (aiVar == null) {
            al.d("warn: upload manager is null", new Object[0]);
            return;
        }
        if (!z3 && !aiVar.b(at.f9620a)) {
            al.d("warn: not crashHappen or not should upload", new Object[0]);
            return;
        }
        StrategyBean c2 = this.f9617e.c();
        if (!c2.f9502f) {
            al.d("remote report is disable!", new Object[0]);
            al.b("[crash] server closed bugly in this app. please check your appid if is correct, and re-install it", new Object[0]);
            return;
        }
        if (list == null || list.size() == 0) {
            al.d("warn: crashList is null or crashList num is 0", new Object[0]);
            return;
        }
        try {
            String str = c2.r;
            String str2 = StrategyBean.f9498b;
            bp a2 = a(this.f9614b, list, aa.b());
            if (a2 == null) {
                al.d("create eupPkg fail!", new Object[0]);
                return;
            }
            byte[] a3 = ae.a((m) a2);
            if (a3 == null) {
                al.d("send encode fail!", new Object[0]);
                return;
            }
            bq a4 = ae.a(this.f9614b, AVMDLDataLoader.KeyIsGetVersionInfo, a3);
            if (a4 == null) {
                al.d("request package is null.", new Object[0]);
                return;
            }
            long currentTimeMillis = System.currentTimeMillis();
            eby ebyVar = new eby();
            ebyVar.f15273c = currentTimeMillis;
            ebyVar.f15272b = list;
            ebyVar.f15274d = z;
            if (z) {
                this.f9615c.a(f9613a, a4, str, str2, ebyVar, j2, z2);
            } else {
                this.f9615c.a(f9613a, a4, str, str2, ebyVar, false);
            }
        } catch (Throwable th) {
            al.e("req cr error %s", th.toString());
            if (al.b(th)) {
                return;
            }
            th.printStackTrace();
        }
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code restructure failed: missing block: B:102:0x0274, code lost:
    
        if (b(r20, r7, r8) == false) goto L106;
     */
    /* JADX WARN: Code restructure failed: missing block: B:21:0x0045, code lost:
    
        if ((com.tencent.bugly.proguard.at.a().B & 4) > 0) goto L21;
     */
    /* JADX WARN: Code restructure failed: missing block: B:64:0x0059, code lost:
    
        if ((com.tencent.bugly.proguard.at.a().B & 1) > 0) goto L21;
     */
    /* JADX WARN: Code restructure failed: missing block: B:66:0x0063, code lost:
    
        if ((com.tencent.bugly.proguard.at.a().B & 2) > 0) goto L21;
     */
    /* JADX WARN: Removed duplicated region for block: B:105:0x028f  */
    /* JADX WARN: Removed duplicated region for block: B:108:0x0212  */
    /* JADX WARN: Removed duplicated region for block: B:86:0x01e9  */
    /* JADX WARN: Removed duplicated region for block: B:93:0x0241  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final boolean a(CrashDetailBean crashDetailBean, boolean z) {
        boolean z2;
        List<ar> b2;
        ArrayList arrayList;
        String str;
        ag agVar;
        boolean z3;
        Map<String, String> map;
        if (crashDetailBean == null) {
            al.d("CrashBean is null, won't handle.", new Object[0]);
            return true;
        }
        b(crashDetailBean);
        if (z && (this.f9619g != null || this.f9618f != null)) {
            Iterator<exp> it = i.iterator();
            while (true) {
                if (!it.hasNext()) {
                    break;
                }
                exp next = it.next();
                if (next.f16329a == crashDetailBean.f9505b) {
                    switch (next.f16330b) {
                        case 0:
                            z3 = at.a().k();
                            break;
                        case 1:
                        case 2:
                            z3 = true;
                            break;
                        case 3:
                            z3 = at.a().j();
                            break;
                        case 6:
                            z3 = at.a().j();
                            break;
                    }
                }
            }
            z3 = false;
            if (z3) {
                try {
                    Map<Integer, Integer> map2 = j;
                    if (map2.containsKey(Integer.valueOf(crashDetailBean.f9505b))) {
                        int intValue = map2.get(Integer.valueOf(crashDetailBean.f9505b)).intValue();
                        byte[] bArr = null;
                        if (this.f9618f != null) {
                            al.c("Calling 'onCrashHandleStart' of RQD crash listener.", new Object[0]);
                            al.c("Calling 'getCrashExtraMessage' of RQD crash listener.", new Object[0]);
                            String b3 = this.f9618f.b();
                            if (b3 != null) {
                                HashMap hashMap = new HashMap(1);
                                hashMap.put("userData", b3);
                                map = hashMap;
                            }
                            map = null;
                        } else {
                            if (this.f9619g != null) {
                                al.c("Calling 'onCrashHandleStart' of Bugly crash listener.", new Object[0]);
                                map = this.f9619g.onCrashHandleStart(intValue, crashDetailBean.n, crashDetailBean.o, crashDetailBean.q);
                            }
                            map = null;
                        }
                        a(crashDetailBean, map);
                        al.a("[crash callback] start user's callback:onCrashHandleStart2GetExtraDatas()", new Object[0]);
                        if (this.f9618f != null) {
                            al.c("Calling 'getCrashExtraData' of RQD crash listener.", new Object[0]);
                            bArr = this.f9618f.a();
                        } else if (this.f9619g != null) {
                            al.c("Calling 'onCrashHandleStart2GetExtraDatas' of Bugly crash listener.", new Object[0]);
                            bArr = this.f9619g.onCrashHandleStart2GetExtraDatas(intValue, crashDetailBean.n, crashDetailBean.o, crashDetailBean.q);
                        }
                        if (bArr == null) {
                            al.d("extra user byte is null. CrashBean won't have userExtraByteDatas.", new Object[0]);
                        } else {
                            if (bArr.length <= 100000) {
                                crashDetailBean.Y = bArr;
                            } else {
                                al.d("extra bytes size %d is over limit %d will drop over part", Integer.valueOf(bArr.length), Integer.valueOf(BuglyStrategy.a.MAX_USERDATA_VALUE_LENGTH));
                                crashDetailBean.Y = Arrays.copyOf(bArr, BuglyStrategy.a.MAX_USERDATA_VALUE_LENGTH);
                            }
                            al.a("add extra bytes %d ", Integer.valueOf(bArr.length));
                        }
                        if (this.f9618f != null) {
                            al.c("Calling 'onCrashSaving' of RQD crash listener.", new Object[0]);
                            if (!this.f9618f.c()) {
                                al.d("Crash listener 'onCrashSaving' return 'false' thus will not handle this crash.", new Object[0]);
                            }
                        }
                    } else {
                        al.d("Cannot get crash type for crashBean type:" + crashDetailBean.f9505b, new Object[0]);
                    }
                } catch (Throwable th) {
                    al.d("crash handle callback something wrong! %s", th.getClass().getName());
                    if (!al.a(th)) {
                        th.printStackTrace();
                    }
                }
            } else {
                al.c("Should not call back.", new Object[0]);
            }
        }
        if (!ab.r()) {
            crashDetailBean.w = ap.a(at.f9624f, at.k);
        }
        String str2 = crashDetailBean.q;
        String str3 = at.q;
        if (str3 != null && !str3.isEmpty()) {
            al.c("Crash filter for crash stack is: %s", at.q);
            if (str2.contains(at.q)) {
                al.d("This crash contains the filter string set. It will not be record and upload.", new Object[0]);
                z2 = true;
                if (!z2 && !a(crashDetailBean.q)) {
                    if (crashDetailBean.f9505b == 2) {
                        y yVar = new y();
                        yVar.f9816b = 1;
                        yVar.f9817c = crashDetailBean.A;
                        yVar.f9818d = crashDetailBean.B;
                        yVar.f9819e = crashDetailBean.r;
                        w.a().b(1);
                        w.a().a(yVar);
                        al.b("[crash] a crash occur, handling...", new Object[0]);
                    } else {
                        al.b("[crash] a caught exception occur, handling...", new Object[0]);
                    }
                    b2 = b();
                    arrayList = new ArrayList(10);
                    if (b2 != null && b2.size() > 0) {
                        arrayList.addAll(a(b2));
                        b2.removeAll(arrayList);
                        if (b2.size() > 20) {
                            StringBuilder o = awf.o("_id in (SELECT _id FROM t_cr order by _id limit 5)");
                            String sb = o.toString();
                            o.setLength(0);
                            try {
                                al.c("deleted first record %s data %d", "t_cr", Integer.valueOf(w.a().a("t_cr", sb)));
                            } catch (Throwable th2) {
                                if (!al.a(th2)) {
                                    th2.printStackTrace();
                                }
                            }
                        }
                    }
                    b(crashDetailBean);
                    str = k.get(Integer.valueOf(crashDetailBean.f9505b));
                    if (!TextUtils.isEmpty(str)) {
                        agVar = ag.a.f9557a;
                        agVar.a(new ag.c(crashDetailBean.f9506c, str, crashDetailBean.r, true, 0L, "realtime", null));
                    }
                    d(arrayList);
                    al.b("[crash] save crash success", new Object[0]);
                    return false;
                }
                return true;
            }
        }
        z2 = false;
        if (!z2) {
            if (crashDetailBean.f9505b == 2) {
            }
            b2 = b();
            arrayList = new ArrayList(10);
            if (b2 != null) {
                arrayList.addAll(a(b2));
                b2.removeAll(arrayList);
                if (b2.size() > 20) {
                }
            }
            b(crashDetailBean);
            str = k.get(Integer.valueOf(crashDetailBean.f9505b));
            if (!TextUtils.isEmpty(str)) {
            }
            d(arrayList);
            al.b("[crash] save crash success", new Object[0]);
            return false;
        }
        return true;
    }

    public final void b(CrashDetailBean crashDetailBean) {
        if (crashDetailBean == null) {
            return;
        }
        ContentValues c2 = c(crashDetailBean);
        if (c2 != null) {
            long a2 = w.a().a("t_cr", c2, (v) null);
            if (a2 >= 0) {
                al.c("insert %s success!", "t_cr");
                crashDetailBean.f9504a = a2;
            }
        }
        if (at.l) {
            d(crashDetailBean);
        }
    }

    public final void b(CrashDetailBean crashDetailBean, boolean z) {
        if (!at.o) {
            al.a("do not upload spot crash right now, crash would be uploaded when app next start", new Object[0]);
            return;
        }
        al.a("try to upload right now", new Object[0]);
        ArrayList arrayList = new ArrayList();
        arrayList.add(crashDetailBean);
        a(arrayList, 3000L, z, crashDetailBean.f9505b == 7, z);
    }
}
