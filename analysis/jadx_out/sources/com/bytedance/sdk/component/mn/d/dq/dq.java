package com.bytedance.sdk.component.mn.d.dq;

import android.content.Context;
import android.text.TextUtils;
import com.bytedance.keva.Keva;
import com.bytedance.keva.KevaBuilder;
import com.bytedance.keva.KevaMonitor;
import com.bytedance.sdk.component.mn.ox;
import java.util.HashMap;
import java.util.Map;
import java.util.Set;

/* loaded from: classes.dex */
public class dq implements com.bytedance.sdk.component.mn.d.dq {

    /* renamed from: d, reason: collision with root package name */
    private static final Map<String, com.bytedance.sdk.component.mn.dq> f2001d = new HashMap();
    private static volatile boolean ox = false;
    private static volatile boolean p = true;
    private Keva dq;

    private dq(String str, boolean z, int i) {
        if (i != 1) {
            p(str, z);
        } else {
            ox(str, z);
        }
    }

    public static com.bytedance.sdk.component.mn.dq dq(Context context, String str, boolean z, int i) {
        if (!p) {
            return null;
        }
        try {
            if (!ox) {
                ox = dq(context);
            }
            if (TextUtils.isEmpty(str)) {
                str = "tt_ad_sdk_keva";
            }
            if (!p) {
                return null;
            }
            Map<String, com.bytedance.sdk.component.mn.dq> map = f2001d;
            com.bytedance.sdk.component.mn.dq dqVar = map.get(str);
            if (dqVar == null) {
                dqVar = new dq(str, z, i);
                if (p) {
                    map.put(str, dqVar);
                }
            }
            if (p) {
                return dqVar;
            }
            return null;
        } catch (Throwable unused) {
            p = false;
            return null;
        }
    }

    private static boolean dq(Context context) {
        if (context == null) {
            context = ox.getContext();
        }
        if (context == null) {
            return false;
        }
        KevaBuilder kevaBuilder = KevaBuilder.getInstance();
        kevaBuilder.setMonitor(new KevaMonitor() { // from class: com.bytedance.sdk.component.mn.d.dq.dq.1
        });
        kevaBuilder.setContext(context);
        return true;
    }

    private void ox(String str, boolean z) {
        if (z) {
            this.dq = Keva.getRepo(str, 1);
        } else {
            this.dq = Keva.getRepo(str, 0);
        }
    }

    private void p(String str, boolean z) {
        if (z) {
            this.dq = Keva.getRepoSync(str, 1);
        } else {
            this.dq = Keva.getRepoSync(str, 0);
        }
    }

    @Override // com.bytedance.sdk.component.mn.dq
    public float d(String str, float f2) {
        return this.dq.getFloat(str, f2);
    }

    @Override // com.bytedance.sdk.component.mn.dq
    public int d(String str, int i) {
        return this.dq.getInt(str, i);
    }

    @Override // com.bytedance.sdk.component.mn.dq
    public long d(String str, long j) {
        return this.dq.getLong(str, j);
    }

    @Override // com.bytedance.sdk.component.mn.dq
    public String d(String str, String str2) {
        return this.dq.getString(str, str2);
    }

    @Override // com.bytedance.sdk.component.mn.dq
    public Set<String> d(String str, Set<String> set) {
        return this.dq.getStringSet(str, set);
    }

    @Override // com.bytedance.sdk.component.mn.dq
    public void d() {
        this.dq.clear();
    }

    @Override // com.bytedance.sdk.component.mn.dq
    public boolean d(String str, boolean z) {
        return this.dq.getBoolean(str, z);
    }

    @Override // com.bytedance.sdk.component.mn.dq
    public Map<String, ?> dq() {
        return this.dq.getAll();
    }

    @Override // com.bytedance.sdk.component.mn.dq
    public void dq(String str) {
        this.dq.erase(str);
    }

    @Override // com.bytedance.sdk.component.mn.dq
    public void dq(String str, float f2) {
        this.dq.storeFloat(str, f2);
    }

    @Override // com.bytedance.sdk.component.mn.dq
    public void dq(String str, int i) {
        this.dq.storeInt(str, i);
    }

    @Override // com.bytedance.sdk.component.mn.dq
    public void dq(String str, long j) {
        this.dq.storeLong(str, j);
    }

    @Override // com.bytedance.sdk.component.mn.dq
    public void dq(String str, String str2) {
        this.dq.storeString(str, str2);
    }

    @Override // com.bytedance.sdk.component.mn.dq
    public void dq(String str, Set<String> set) {
        this.dq.storeStringSet(str, set);
    }

    @Override // com.bytedance.sdk.component.mn.dq
    public void dq(String str, boolean z) {
        this.dq.storeBoolean(str, z);
    }
}
