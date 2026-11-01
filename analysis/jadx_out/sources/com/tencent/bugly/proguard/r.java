package com.tencent.bugly.proguard;

import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import com.bytedance.android.live.base.api.push.model.PushUIConfig;
import com.ss.android.downloadad.api.constant.AdBaseConstants;
import com.tencent.bugly.crashreport.biz.UserInfoBean;
import com.tencent.bugly.crashreport.common.strategy.StrategyBean;
import g.ada;
import g.axi;
import g.cef;
import g.dor;
import g.ffr;
import java.io.BufferedReader;
import java.io.File;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

/* loaded from: classes.dex */
public final class r {

    /* renamed from: e, reason: collision with root package name */
    private static boolean f9783e = true;

    /* renamed from: a, reason: collision with root package name */
    private Context f9784a;

    /* renamed from: b, reason: collision with root package name */
    private long f9785b;

    /* renamed from: c, reason: collision with root package name */
    private int f9786c;

    /* renamed from: d, reason: collision with root package name */
    private boolean f9787d;

    public r(Context context, boolean z) {
        this.f9784a = context;
        this.f9787d = z;
    }

    private static int a(List<UserInfoBean> list) {
        int i;
        long currentTimeMillis = System.currentTimeMillis();
        int i2 = 0;
        for (UserInfoBean userInfoBean : list) {
            if (userInfoBean.f9491e > currentTimeMillis - 600000 && ((i = userInfoBean.f9488b) == 1 || i == 4 || i == 3)) {
                i2++;
            }
        }
        return i2;
    }

    private static UserInfoBean a(Cursor cursor) {
        if (cursor == null) {
            return null;
        }
        try {
            byte[] blob = cursor.getBlob(cursor.getColumnIndex("_dt"));
            if (blob == null) {
                return null;
            }
            long j = cursor.getLong(cursor.getColumnIndex(ada.COLUMN_ID));
            UserInfoBean userInfoBean = (UserInfoBean) ap.a(blob, UserInfoBean.CREATOR);
            if (userInfoBean == null) {
                return userInfoBean;
            }
            userInfoBean.f9487a = j;
            return userInfoBean;
        } catch (Throwable th) {
            if (!al.a(th)) {
                th.printStackTrace();
            }
            return null;
        }
    }

    public static List<UserInfoBean> a(String str) {
        Cursor cursor;
        String str2;
        try {
            if (ap.b(str)) {
                str2 = null;
            } else {
                str2 = "_pc = '" + str + "'";
            }
            cursor = w.a().a("t_ui", (String[]) null, str2);
            if (cursor == null) {
                return null;
            }
            try {
                StringBuilder sb = new StringBuilder();
                ArrayList arrayList = new ArrayList();
                while (cursor.moveToNext()) {
                    UserInfoBean a2 = a(cursor);
                    if (a2 != null) {
                        arrayList.add(a2);
                    } else {
                        try {
                            long j = cursor.getLong(cursor.getColumnIndex(ada.COLUMN_ID));
                            sb.append(" or _id = ");
                            sb.append(j);
                        } catch (Throwable unused) {
                            al.d("[Database] unknown id.", new Object[0]);
                        }
                    }
                }
                String sb2 = sb.toString();
                if (sb2.length() > 0) {
                    al.d("[Database] deleted %s error data %d", "t_ui", Integer.valueOf(w.a().a("t_ui", sb2.substring(4))));
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

    public static /* synthetic */ void a(UserInfoBean userInfoBean) {
        aa b2;
        if (userInfoBean == null || (b2 = aa.b()) == null) {
            return;
        }
        userInfoBean.j = b2.d();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(UserInfoBean userInfoBean, boolean z) {
        List<UserInfoBean> a2;
        if (userInfoBean == null) {
            return;
        }
        if (!z && userInfoBean.f9488b != 1 && (a2 = a(aa.a(this.f9784a).f9537d)) != null && a2.size() >= 20) {
            al.a("[UserInfo] There are too many user info in local: %d", Integer.valueOf(a2.size()));
            return;
        }
        long a3 = w.a().a("t_ui", b(userInfoBean), (v) null);
        if (a3 >= 0) {
            al.c("[Database] insert %s success with ID: %d", "t_ui", Long.valueOf(a3));
            userInfoBean.f9487a = a3;
        }
    }

    private static void a(List<UserInfoBean> list, List<UserInfoBean> list2) {
        int size = list.size() - 20;
        if (size > 0) {
            int i = 0;
            while (i < list.size() - 1) {
                int i2 = i + 1;
                for (int i3 = i2; i3 < list.size(); i3++) {
                    if (list.get(i).f9491e > list.get(i3).f9491e) {
                        UserInfoBean userInfoBean = list.get(i);
                        list.set(i, list.get(i3));
                        list.set(i3, userInfoBean);
                    }
                }
                i = i2;
            }
            for (int i4 = 0; i4 < size; i4++) {
                list2.add(list.get(i4));
            }
        }
    }

    private void a(List<UserInfoBean> list, boolean z) {
        aa b2;
        boolean z2 = false;
        if (!b(z)) {
            long currentTimeMillis = System.currentTimeMillis();
            for (UserInfoBean userInfoBean : list) {
                userInfoBean.f9492f = currentTimeMillis;
                a(userInfoBean, true);
            }
            al.d("uploadCheck failed", new Object[0]);
            return;
        }
        int i = this.f9786c == 1 ? 1 : 2;
        bv bvVar = null;
        if (list != null && list.size() != 0 && (b2 = aa.b()) != null) {
            b2.o();
            bv bvVar2 = new bv();
            bvVar2.f9749b = b2.f9537d;
            bvVar2.f9750c = b2.g();
            ArrayList<bu> arrayList = new ArrayList<>();
            Iterator<UserInfoBean> it = list.iterator();
            while (it.hasNext()) {
                bu a2 = ae.a(it.next());
                if (a2 != null) {
                    arrayList.add(a2);
                }
            }
            bvVar2.f9751d = arrayList;
            HashMap hashMap = new HashMap();
            bvVar2.f9752e = hashMap;
            hashMap.put("A7", "");
            bvVar2.f9752e.put("A6", aa.n());
            bvVar2.f9752e.put("A5", b2.m());
            Map<String, String> map = bvVar2.f9752e;
            StringBuilder sb = new StringBuilder();
            sb.append(b2.k());
            map.put("A2", sb.toString());
            Map<String, String> map2 = bvVar2.f9752e;
            StringBuilder sb2 = new StringBuilder();
            sb2.append(b2.k());
            map2.put("A1", sb2.toString());
            bvVar2.f9752e.put("A24", b2.k);
            Map<String, String> map3 = bvVar2.f9752e;
            StringBuilder sb3 = new StringBuilder();
            sb3.append(b2.l());
            map3.put("A17", sb3.toString());
            bvVar2.f9752e.put("A15", b2.q());
            Map<String, String> map4 = bvVar2.f9752e;
            StringBuilder sb4 = new StringBuilder();
            sb4.append(b2.r());
            map4.put("A13", sb4.toString());
            bvVar2.f9752e.put("F08", b2.E);
            bvVar2.f9752e.put("F09", b2.F);
            Map<String, String> y = b2.y();
            if (y != null && y.size() > 0) {
                for (Map.Entry<String, String> entry : y.entrySet()) {
                    bvVar2.f9752e.put("C04_" + entry.getKey(), entry.getValue());
                }
            }
            if (i == 1) {
                bvVar2.f9748a = (byte) 1;
            } else if (i != 2) {
                al.e("unknown up type %d ", Integer.valueOf(i));
            } else {
                bvVar2.f9748a = (byte) 2;
            }
            bvVar = bvVar2;
        }
        if (bvVar == null) {
            al.d("[UserInfo] Failed to create UserInfoPackage.", new Object[0]);
            return;
        }
        byte[] a3 = ae.a((m) bvVar);
        if (a3 == null) {
            al.d("[UserInfo] Failed to encode data.", new Object[0]);
            return;
        }
        bq a4 = ae.a(this.f9784a, 840, a3);
        if (a4 == null) {
            al.d("[UserInfo] Request package is null.", new Object[0]);
            return;
        }
        ai.a().a(1001, a4, ac.a().c().q, StrategyBean.f9497a, new ffr(11, this, list, z2), this.f9786c == 1);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:26:0x0064 A[Catch: all -> 0x0024, TryCatch #0 {, blocks: (B:3:0x0001, B:9:0x0006, B:12:0x000d, B:15:0x0014, B:17:0x001a, B:19:0x0026, B:21:0x003b, B:23:0x0049, B:24:0x005e, B:26:0x0064, B:28:0x0069, B:31:0x0070, B:34:0x0086, B:38:0x0058), top: B:2:0x0001 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public synchronized void a(boolean z) {
        ai a2;
        ac a3;
        boolean z2;
        if (this.f9787d && (a2 = ai.a()) != null && (a3 = ac.a()) != null && (!a3.b() || a2.b(1001))) {
            String str = aa.a(this.f9784a).f9537d;
            ArrayList arrayList = new ArrayList();
            List<UserInfoBean> a4 = a(str);
            if (a4 != null) {
                a(a4, arrayList);
                b(a4, arrayList);
                int a5 = a(a4);
                if (a5 > 15) {
                    al.d("[UserInfo] Upload user info too many times in 10 min: %d", Integer.valueOf(a5));
                    z2 = false;
                    if (arrayList.size() > 0) {
                        b(arrayList);
                    }
                    if (z2 && a4.size() != 0) {
                        al.c("[UserInfo] Upload user info(size: %d)", Integer.valueOf(a4.size()));
                        a(a4, z);
                        return;
                    }
                    al.c("[UserInfo] There is no user info in local database.", new Object[0]);
                }
            } else {
                a4 = new ArrayList<>();
            }
            z2 = true;
            if (arrayList.size() > 0) {
            }
            if (z2) {
                al.c("[UserInfo] Upload user info(size: %d)", Integer.valueOf(a4.size()));
                a(a4, z);
                return;
            }
            al.c("[UserInfo] There is no user info in local database.", new Object[0]);
        }
    }

    private static ContentValues b(UserInfoBean userInfoBean) {
        if (userInfoBean == null) {
            return null;
        }
        try {
            ContentValues contentValues = new ContentValues();
            long j = userInfoBean.f9487a;
            if (j > 0) {
                contentValues.put(ada.COLUMN_ID, Long.valueOf(j));
            }
            contentValues.put("_tm", Long.valueOf(userInfoBean.f9491e));
            contentValues.put("_ut", Long.valueOf(userInfoBean.f9492f));
            contentValues.put("_tp", Integer.valueOf(userInfoBean.f9488b));
            contentValues.put("_pc", userInfoBean.f9489c);
            contentValues.put("_dt", ap.a(userInfoBean));
            return contentValues;
        } catch (Throwable th) {
            if (!al.a(th)) {
                th.printStackTrace();
            }
            return null;
        }
    }

    private static void b(List<UserInfoBean> list) {
        if (list.size() == 0) {
            return;
        }
        StringBuilder sb = new StringBuilder();
        for (int i = 0; i < list.size() && i < 50; i++) {
            UserInfoBean userInfoBean = list.get(i);
            sb.append(" or _id = ");
            sb.append(userInfoBean.f9487a);
        }
        String sb2 = sb.toString();
        if (sb2.length() > 0) {
            sb2 = sb2.substring(4);
        }
        sb.setLength(0);
        try {
            al.c("[Database] deleted %s data %d", "t_ui", Integer.valueOf(w.a().a("t_ui", sb2)));
        } catch (Throwable th) {
            if (al.a(th)) {
                return;
            }
            th.printStackTrace();
        }
    }

    private static void b(List<UserInfoBean> list, List<UserInfoBean> list2) {
        Iterator<UserInfoBean> it = list.iterator();
        while (it.hasNext()) {
            UserInfoBean next = it.next();
            if (next.f9492f != -1) {
                it.remove();
                if (next.f9491e < ap.b()) {
                    list2.add(next);
                }
            }
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:15:0x0087, code lost:
    
        if (r15 != null) goto L39;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private boolean b(boolean z) {
        boolean z2 = true;
        if (!f9783e) {
            return true;
        }
        File file = new File(this.f9784a.getFilesDir(), "bugly_last_us_up_tm");
        long currentTimeMillis = System.currentTimeMillis();
        if (z) {
            am.a(file, String.valueOf(currentTimeMillis), 1024L, false);
            return true;
        }
        if (file.exists()) {
            BufferedReader a2 = ap.a(file);
            if (a2 != null) {
                try {
                    long longValue = Long.valueOf(a2.readLine().trim()).longValue();
                    if (currentTimeMillis >= longValue && currentTimeMillis - longValue <= AdBaseConstants.DEFAULT_DELAY_TIMESTAMP && currentTimeMillis - longValue < 300000) {
                        z2 = false;
                    }
                    am.a(file, String.valueOf(currentTimeMillis), 1024L, false);
                } finally {
                    try {
                        return z2;
                    } finally {
                    }
                }
            }
        } else {
            am.a(file, String.valueOf(currentTimeMillis), 1024L, false);
        }
        return z2;
    }

    public final void a() {
        this.f9785b = ap.b() + AdBaseConstants.DEFAULT_DELAY_TIMESTAMP;
        ak.a().a(new dor(this, 1), (this.f9785b - System.currentTimeMillis()) + PushUIConfig.dismissTime);
    }

    public final void a(int i, boolean z) {
        ac a2 = ac.a();
        if (a2 != null && !a2.c().f9503g && i != 1 && i != 3) {
            al.e("UserInfo is disable", new Object[0]);
            return;
        }
        if (i == 1 || i == 3) {
            this.f9786c++;
        }
        aa a3 = aa.a(this.f9784a);
        UserInfoBean userInfoBean = new UserInfoBean();
        userInfoBean.f9488b = i;
        userInfoBean.f9489c = a3.f9537d;
        userInfoBean.f9490d = a3.f();
        userInfoBean.f9491e = System.currentTimeMillis();
        userInfoBean.f9492f = -1L;
        userInfoBean.n = a3.o;
        userInfoBean.o = i == 1 ? 1 : 0;
        userInfoBean.l = a3.a();
        userInfoBean.m = a3.y;
        userInfoBean.f9493g = a3.z;
        userInfoBean.h = a3.A;
        userInfoBean.i = a3.B;
        userInfoBean.k = a3.C;
        userInfoBean.r = a3.t();
        userInfoBean.s = a3.y();
        userInfoBean.p = a3.z();
        userInfoBean.q = a3.x;
        ak.a().a(new cef(4, this, userInfoBean, z), 0L);
    }

    public final void a(long j) {
        ak.a().a(new axi(this, j, 1), j);
    }

    public final void b() {
        ak a2 = ak.a();
        if (a2 != null) {
            a2.a(new dor(this, 0));
        }
    }
}
