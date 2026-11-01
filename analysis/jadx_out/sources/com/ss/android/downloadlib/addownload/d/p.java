package com.ss.android.downloadlib.addownload.d;

import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.text.TextUtils;
import android.util.Pair;
import com.ss.android.downloadlib.addownload.no;
import com.ss.android.downloadlib.mn.mp;
import java.util.Iterator;
import java.util.LinkedList;

/* loaded from: classes.dex */
public class p {
    private static volatile p dq;
    private static final String[] ox = {"com", "android", "ss"};
    private static final int[] p = {3101, 3102, 3103, 3201, 3202, 3203};

    /* renamed from: d, reason: collision with root package name */
    private final LinkedList<dq> f9150d = new LinkedList<>();

    public static class dq {

        /* renamed from: d, reason: collision with root package name */
        public final int f9151d;
        public final String dq;
        public final String ox;
        public final String p;
        public final long s;

        private dq(String str, int i, String str2, String str3, long j) {
            this.dq = str;
            this.f9151d = i;
            this.ox = str2 != null ? str2.toLowerCase() : null;
            this.p = str3 != null ? str3.toLowerCase() : null;
            this.s = j;
        }
    }

    private p() {
    }

    private void d() {
        long currentTimeMillis = System.currentTimeMillis();
        synchronized (this.f9150d) {
            try {
                Iterator<dq> it = this.f9150d.iterator();
                while (it.hasNext() && currentTimeMillis - it.next().s > 1800000) {
                    it.remove();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public static p dq() {
        if (dq == null) {
            synchronized (p.class) {
                try {
                    if (dq == null) {
                        dq = new p();
                    }
                } finally {
                }
            }
        }
        return dq;
    }

    private static boolean dq(String str, String str2) {
        String[] split;
        String[] split2;
        boolean z;
        try {
            split = str.split("\\.");
            split2 = str2.split("\\.");
        } catch (Throwable th) {
            th.printStackTrace();
        }
        if (split.length != 0 && split2.length != 0) {
            int i = 0;
            int i2 = 0;
            for (String str3 : split) {
                String[] strArr = ox;
                int length = strArr.length;
                int i3 = 0;
                while (true) {
                    if (i3 >= length) {
                        z = false;
                        break;
                    }
                    String str4 = strArr[i3];
                    if (str4.equals(str3)) {
                        if (i < split2.length && str4.equals(split2[i])) {
                            i++;
                        }
                        z = true;
                    } else {
                        i3++;
                    }
                }
                if (!z) {
                    int i4 = i2;
                    int i5 = i;
                    while (i < split2.length) {
                        if (str3.equals(split2[i])) {
                            if (i == i5) {
                                i5++;
                            }
                            i4++;
                            if (i4 >= 2) {
                                return true;
                            }
                        }
                        i++;
                    }
                    i = i5;
                    i2 = i4;
                }
            }
            return false;
        }
        return false;
    }

    private dq ox(String str) {
        try {
            PackageManager packageManager = no.getContext().getPackageManager();
            PackageInfo packageInfo = packageManager.getPackageInfo(str, 0);
            if (packageInfo != null) {
                return new dq(str, packageInfo.versionCode, packageInfo.versionName, (String) packageManager.getApplicationLabel(packageInfo.applicationInfo), System.currentTimeMillis());
            }
            return null;
        } catch (Throwable th) {
            th.printStackTrace();
            return null;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:39:0x0099, code lost:
    
        r7[1] = r11;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public Pair<dq, Integer> d(com.ss.android.downloadad.api.dq.d dVar) {
        int i;
        dq next;
        if (dVar == null) {
            return null;
        }
        try {
            d();
        } catch (Throwable th) {
            th.printStackTrace();
        }
        if (this.f9150d.isEmpty()) {
            return null;
        }
        String vf = dVar.vf();
        String s = dVar.s();
        String er = dVar.er();
        int ce = dVar.ce();
        int length = p.length;
        dq[] dqVarArr = new dq[length];
        synchronized (this.f9150d) {
            Iterator<dq> it = this.f9150d.iterator();
            PackageInfo packageInfo = null;
            while (true) {
                if (!it.hasNext()) {
                    break;
                }
                next = it.next();
                if (next.s >= dVar.bl()) {
                    if (TextUtils.isEmpty(vf)) {
                        if (packageInfo == null) {
                            packageInfo = mp.dq(dVar);
                        }
                        if (packageInfo != null) {
                            try {
                                vf = (String) no.getContext().getPackageManager().getApplicationLabel(packageInfo.applicationInfo);
                            } catch (Throwable unused) {
                            }
                        }
                    }
                    if (!TextUtils.isEmpty(vf) && !TextUtils.isEmpty(next.p)) {
                        vf = vf.toLowerCase();
                        if (vf.equals(next.p)) {
                            dqVarArr[0] = next;
                            break;
                        }
                        if (vf.contains(next.p) || next.p.contains(vf)) {
                            break;
                        }
                    }
                    if (TextUtils.isEmpty(s)) {
                        if (packageInfo == null) {
                            packageInfo = mp.dq(dVar);
                        }
                        if (packageInfo != null) {
                            s = packageInfo.packageName;
                        }
                    }
                    if (!TextUtils.isEmpty(s) && !TextUtils.isEmpty(next.dq)) {
                        s = s.toLowerCase();
                        if (s.contains(next.dq) || next.dq.contains(s)) {
                            break;
                        }
                        if (dqVarArr[3] == null) {
                            if (dq(s, next.dq)) {
                                dqVarArr[3] = next;
                            }
                        }
                    }
                    if (dqVarArr[4] == null) {
                        if (TextUtils.isEmpty(er)) {
                            if (packageInfo == null) {
                                packageInfo = mp.dq(dVar);
                            }
                            if (packageInfo != null) {
                                er = packageInfo.versionName;
                            }
                        }
                        if (!TextUtils.isEmpty(er) && !TextUtils.isEmpty(next.ox)) {
                            er = er.toLowerCase();
                            if (er.equals(next.ox)) {
                                dqVarArr[4] = next;
                            }
                        }
                        if (dqVarArr[5] == null) {
                            if (ce <= 0) {
                                if (packageInfo == null) {
                                    packageInfo = mp.dq(dVar);
                                }
                                if (packageInfo != null) {
                                    ce = packageInfo.versionCode;
                                }
                            }
                            if (ce == next.f9151d) {
                                dqVarArr[5] = next;
                            }
                        }
                    }
                }
            }
            dqVarArr[2] = next;
        }
        for (i = 0; i < length; i++) {
            if (dqVarArr[i] != null) {
                return new Pair<>(dqVarArr[i], Integer.valueOf(p[i]));
            }
        }
        return null;
    }

    public void d(String str) {
        d();
        if (TextUtils.isEmpty(str)) {
            return;
        }
        synchronized (this.f9150d) {
            try {
                Iterator<dq> it = this.f9150d.iterator();
                while (it.hasNext()) {
                    if (str.equals(it.next().dq)) {
                        it.remove();
                        return;
                    }
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public dq dq(com.ss.android.downloadad.api.dq.d dVar) {
        if (dVar == null) {
            return null;
        }
        d();
        synchronized (this.f9150d) {
            try {
                Iterator<dq> it = this.f9150d.iterator();
                while (it.hasNext()) {
                    dq next = it.next();
                    if (next.s > dVar.bl()) {
                        return next;
                    }
                }
                return null;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public void dq(String str) {
        dq ox2;
        d();
        if (TextUtils.isEmpty(str) || (ox2 = ox(str)) == null) {
            return;
        }
        synchronized (this.f9150d) {
            this.f9150d.add(ox2);
        }
    }
}
