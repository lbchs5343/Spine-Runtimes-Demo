package com.bytedance.msdk.core.q;

import android.app.Activity;
import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.os.Build;
import android.text.TextUtils;
import com.bytedance.msdk.ia.ji;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;

/* loaded from: classes.dex */
public class s {
    private static s p;
    private final Set<String> dq = new HashSet(1);

    /* renamed from: d, reason: collision with root package name */
    private final List<iw> f1013d = new ArrayList(1);
    private final List<WeakReference<iw>> ox = new ArrayList(1);

    private s() {
        d();
    }

    private void d() {
        PackageInfo packageInfo;
        String[] strArr;
        Context context = com.bytedance.msdk.core.dq.getContext();
        if (context == null) {
            return;
        }
        try {
            PackageManager packageManager = context.getPackageManager();
            String packageName = context.getPackageName();
            if (packageManager != null && (packageInfo = packageManager.getPackageInfo(packageName, 4096)) != null && (strArr = packageInfo.requestedPermissions) != null && strArr.length != 0) {
                for (int i = 0; i < strArr.length; i++) {
                    if (!TextUtils.isEmpty(strArr[i])) {
                        this.dq.add(strArr[i]);
                    }
                }
            }
        } catch (Throwable unused) {
        }
    }

    private void d(Activity activity, String[] strArr, iw iwVar) {
        for (String str : strArr) {
            if (iwVar != null) {
                try {
                    if (!this.dq.contains(str) ? iwVar.dq(str, p.NOT_FOUND) : ox.dq(activity, str) != 0 ? iwVar.dq(str, p.DENIED) : iwVar.dq(str, p.GRANTED)) {
                        break;
                    }
                } catch (Throwable th) {
                    th.printStackTrace();
                }
            }
        }
        dq(iwVar);
    }

    public static s dq() {
        if (p == null) {
            p = new s();
        }
        return p;
    }

    private synchronized void dq(iw iwVar) {
        try {
            Iterator<WeakReference<iw>> it = this.ox.iterator();
            while (it.hasNext()) {
                WeakReference<iw> next = it.next();
                if (next.get() != iwVar && next.get() != null) {
                }
                it.remove();
            }
            Iterator<iw> it2 = this.f1013d.iterator();
            while (it2.hasNext()) {
                if (it2.next() == iwVar) {
                    it2.remove();
                }
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    private synchronized void dq(String[] strArr, iw iwVar) {
        if (iwVar != null) {
            iwVar.dq(strArr);
            this.f1013d.add(iwVar);
            this.ox.add(new WeakReference<>(iwVar));
        }
    }

    private void dq(String[] strArr, int[] iArr) {
        int i;
        try {
            int length = strArr.length;
            if (iArr.length < length) {
                length = iArr.length;
            }
            Iterator<WeakReference<iw>> it = this.ox.iterator();
            while (it.hasNext()) {
                iw iwVar = it.next().get();
                while (i < length) {
                    i = (iwVar == null || iwVar.dq(strArr[i], iArr[i])) ? 0 : i + 1;
                    it.remove();
                    break;
                }
            }
            Iterator<iw> it2 = this.f1013d.iterator();
            while (it2.hasNext()) {
                it2.next();
                it2.remove();
            }
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    private List<String> ox(Activity activity, String[] strArr, iw iwVar) {
        ArrayList arrayList = new ArrayList(strArr.length);
        for (String str : strArr) {
            if (this.dq.contains(str)) {
                if (!dq(activity, str)) {
                    arrayList.add(str);
                } else if (iwVar != null) {
                    iwVar.dq(str, p.GRANTED);
                }
            } else if (iwVar != null) {
                iwVar.dq(str, p.NOT_FOUND);
            }
        }
        return arrayList;
    }

    public synchronized void dq(Activity activity, String[] strArr, iw iwVar) {
        if (activity != null) {
            try {
                dq(strArr, iwVar);
                if (Build.VERSION.SDK_INT < 23) {
                    d(activity, strArr, iwVar);
                    return;
                }
                List<String> ox = ox(activity, strArr, iwVar);
                if (ox.isEmpty()) {
                    dq(iwVar);
                } else {
                    ox.requestPermissions(activity, (String[]) ox.toArray(new String[ox.size()]), 1);
                }
            } finally {
            }
        }
    }

    public synchronized void dq(Activity activity, String[] strArr, int[] iArr) {
        try {
            new ArrayList(3);
            int length = strArr.length;
            for (int i = 0; i < length; i++) {
                String str = strArr[i];
                if (iArr[i] != -1) {
                    if (ji.s() && !d.dq(activity, str)) {
                    }
                }
                if (iArr[i] != -1) {
                    iArr[i] = -1;
                }
            }
            dq(strArr, iArr);
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    public synchronized boolean dq(Context context, String str) {
        if (context != null) {
            return ji.s() ? d.dq(context, str) && (ox.dq(context, str) == 0 || !this.dq.contains(str)) : ox.dq(context, str) == 0 || !this.dq.contains(str);
        }
        return false;
    }
}
