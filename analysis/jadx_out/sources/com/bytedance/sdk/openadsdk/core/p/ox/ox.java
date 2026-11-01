package com.bytedance.sdk.openadsdk.core.p.ox;

import android.text.TextUtils;
import com.bytedance.sdk.openadsdk.core.ir.n;
import com.bytedance.sdk.openadsdk.core.p.ox.s;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.CopyOnWriteArraySet;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes3.dex */
public class ox implements com.bytedance.sdk.openadsdk.core.p.ox.dq {
    private static final com.bytedance.sdk.component.mn.dq dq = n.dq("open_ad_sdk_meta_cache_kv");

    /* renamed from: com.bytedance.sdk.openadsdk.core.p.ox.ox$1, reason: invalid class name */
    public static /* synthetic */ class AnonymousClass1 {
        static final /* synthetic */ int[] dq;

        static {
            int[] iArr = new int[s.dq.d.values().length];
            dq = iArr;
            try {
                iArr[s.dq.d.TimeLast.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                dq[s.dq.d.CustomPriority.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
        }
    }

    public static class dq {

        /* renamed from: d, reason: collision with root package name */
        long f3374d;
        long dq;
        String iw;
        long mn;
        boolean ox;
        String p;
        int s;

        public dq(String str, long j, long j2, boolean z, String str2, long j3) {
            this(str, j, j2, z, str2, j3, 6607);
        }

        public dq(String str, long j, long j2, boolean z, String str2, long j3, int i) {
            this.dq = j;
            this.f3374d = j2;
            this.ox = z;
            this.p = str;
            this.iw = str2;
            this.mn = j3;
            this.s = i;
        }

        public static dq dq(String str) {
            String str2;
            long j;
            long j2;
            boolean z;
            int i;
            String str3;
            String str4;
            boolean z2;
            int i2;
            JSONObject jSONObject;
            String str5 = "";
            long j3 = 0;
            try {
                jSONObject = new JSONObject(str);
                j = jSONObject.optLong("create_time", 0L);
                try {
                    j2 = jSONObject.optLong("expire_time", 0L);
                } catch (JSONException unused) {
                    str2 = "";
                    j2 = 0;
                }
            } catch (JSONException unused2) {
                str2 = "";
                j = 0;
                j2 = 0;
            }
            try {
                boolean optBoolean = jSONObject.optBoolean("is_using", false);
                try {
                    String optString = jSONObject.optString("material_data", "");
                    try {
                        int optInt = jSONObject.optInt("save_version", 0);
                        try {
                            str5 = jSONObject.optString("uuid", "");
                            j3 = jSONObject.optLong("priority", 0L);
                            str4 = str5;
                            z2 = optBoolean;
                            i2 = optInt;
                            str3 = optString;
                        } catch (JSONException unused3) {
                            i = optInt;
                            z = optBoolean;
                            str2 = str5;
                            str5 = optString;
                            str3 = str5;
                            str4 = str2;
                            z2 = z;
                            i2 = i;
                            return new dq(str3, j, j2, z2, str4, j3, i2);
                        }
                    } catch (JSONException unused4) {
                        z = optBoolean;
                        i = 0;
                    }
                } catch (JSONException unused5) {
                    z = optBoolean;
                    i = 0;
                    str2 = "";
                }
            } catch (JSONException unused6) {
                str2 = "";
                z = true;
                i = 0;
                str3 = str5;
                str4 = str2;
                z2 = z;
                i2 = i;
                return new dq(str3, j, j2, z2, str4, j3, i2);
            }
            return new dq(str3, j, j2, z2, str4, j3, i2);
        }

        public boolean d(s.dq dqVar) {
            if (System.currentTimeMillis() <= this.f3374d && !TextUtils.isEmpty(this.p)) {
                return dqVar.d() && 6607 != this.s;
            }
            return true;
        }

        public boolean dq(s.dq dqVar) {
            return (d(dqVar) || this.ox) ? false : true;
        }

        public String toString() {
            JSONObject jSONObject = new JSONObject();
            try {
                jSONObject.put("create_time", this.dq);
                jSONObject.put("expire_time", this.f3374d);
                jSONObject.put("is_using", this.ox);
                jSONObject.put("material_data", this.p);
                jSONObject.put("save_version", this.s);
                jSONObject.put("uuid", this.iw);
                jSONObject.put("priority", this.mn);
            } catch (JSONException unused) {
            }
            return jSONObject.toString();
        }
    }

    private s.d dq(CopyOnWriteArraySet<String> copyOnWriteArraySet, s.dq dqVar, List<String> list) {
        Iterator<String> it = copyOnWriteArraySet.iterator();
        dq dqVar2 = null;
        while (it.hasNext()) {
            dq dq2 = dq.dq(it.next());
            if (dq2.dq(dqVar)) {
                String str = dq2.iw;
                if (list == null || str == null || !list.contains(str)) {
                    int i = AnonymousClass1.dq[dqVar.p().ordinal()];
                    if (i == 1) {
                        if (dqVar2 != null && dqVar2.dq >= dq2.dq) {
                        }
                        dqVar2 = dq2;
                    } else {
                        if (i != 2) {
                            return new s.d(dq2.p, dq2.dq, dq2.f3374d, dq2.iw);
                        }
                        if (dqVar2 != null && dqVar2.mn >= dq2.mn) {
                        }
                        dqVar2 = dq2;
                    }
                }
            }
        }
        if (dqVar2 != null) {
            return new s.d(dqVar2.p, dqVar2.dq, dqVar2.f3374d, dqVar2.iw);
        }
        return null;
    }

    private String ox(String str) {
        if (TextUtils.isEmpty(str)) {
            str = "0";
        }
        return "sp_reward_video_cache_".concat(String.valueOf(str));
    }

    @Override // com.bytedance.sdk.openadsdk.core.p.ox.dq
    public void d(String str) {
        CopyOnWriteArraySet copyOnWriteArraySet = new CopyOnWriteArraySet();
        copyOnWriteArraySet.addAll(dq.d(ox(str), copyOnWriteArraySet));
        CopyOnWriteArraySet copyOnWriteArraySet2 = new CopyOnWriteArraySet();
        Iterator it = copyOnWriteArraySet.iterator();
        while (it.hasNext()) {
            dq dq2 = dq.dq((String) it.next());
            dq2.ox = false;
            copyOnWriteArraySet2.add(dq2.toString());
        }
        dq.dq(ox(str), copyOnWriteArraySet2);
    }

    @Override // com.bytedance.sdk.openadsdk.core.p.ox.dq
    public void d(String str, s.dq dqVar) {
        CopyOnWriteArraySet copyOnWriteArraySet = new CopyOnWriteArraySet();
        copyOnWriteArraySet.addAll(dq.d(ox(str), copyOnWriteArraySet));
        CopyOnWriteArraySet copyOnWriteArraySet2 = new CopyOnWriteArraySet();
        Iterator it = copyOnWriteArraySet.iterator();
        while (it.hasNext()) {
            dq dq2 = dq.dq((String) it.next());
            if (!dq2.d(dqVar)) {
                copyOnWriteArraySet2.add(dq2.toString());
            }
        }
        dq.dq(ox(str), copyOnWriteArraySet2);
    }

    @Override // com.bytedance.sdk.openadsdk.core.p.ox.dq
    public s.d dq(String str, s.dq dqVar) {
        CopyOnWriteArraySet<String> copyOnWriteArraySet = new CopyOnWriteArraySet<>();
        copyOnWriteArraySet.addAll(dq.d(ox(str), copyOnWriteArraySet));
        return dq(copyOnWriteArraySet, dqVar, (List<String>) null);
    }

    @Override // com.bytedance.sdk.openadsdk.core.p.ox.dq
    public s.d dq(String str, s.dq dqVar, List<String> list) {
        CopyOnWriteArraySet<String> copyOnWriteArraySet = new CopyOnWriteArraySet<>();
        copyOnWriteArraySet.addAll(dq.d(ox(str), copyOnWriteArraySet));
        return dq(copyOnWriteArraySet, dqVar, list);
    }

    @Override // com.bytedance.sdk.openadsdk.core.p.ox.dq
    public void dq(s.dq dqVar) {
        dq.d();
    }

    @Override // com.bytedance.sdk.openadsdk.core.p.ox.dq
    public void dq(String str) {
        dq.dq(ox(str));
    }

    @Override // com.bytedance.sdk.openadsdk.core.p.ox.dq
    public void dq(String str, s.d dVar, boolean z, long j, s.dq dqVar) {
        CopyOnWriteArraySet copyOnWriteArraySet = new CopyOnWriteArraySet();
        copyOnWriteArraySet.addAll(dq.d(ox(str), copyOnWriteArraySet));
        if (dqVar.ox() <= 0) {
            return;
        }
        if (dqVar.ox() > 0 && copyOnWriteArraySet.size() >= dqVar.ox()) {
            Iterator it = copyOnWriteArraySet.iterator();
            String str2 = null;
            long j2 = 0;
            while (it.hasNext()) {
                String str3 = (String) it.next();
                dq dq2 = dq.dq(str3);
                if (str2 == null || j2 < dq2.dq) {
                    j2 = dq2.dq;
                    str2 = str3;
                }
            }
            copyOnWriteArraySet.remove(str2);
        }
        copyOnWriteArraySet.add(new dq(dVar.ox, dVar.dq, dVar.f3377d, z, dVar.s, j).toString());
        dq.dq(ox(str), copyOnWriteArraySet);
    }

    @Override // com.bytedance.sdk.openadsdk.core.p.ox.dq
    public void dq(String str, String str2) {
        CopyOnWriteArraySet copyOnWriteArraySet = new CopyOnWriteArraySet();
        copyOnWriteArraySet.addAll(dq.d(ox(str), copyOnWriteArraySet));
        CopyOnWriteArraySet copyOnWriteArraySet2 = new CopyOnWriteArraySet();
        Iterator it = copyOnWriteArraySet.iterator();
        while (it.hasNext()) {
            String str3 = (String) it.next();
            if (!TextUtils.equals(dq.dq(str3).iw, str2)) {
                copyOnWriteArraySet2.add(str3);
            }
        }
        dq.dq(ox(str), copyOnWriteArraySet2);
    }

    @Override // com.bytedance.sdk.openadsdk.core.p.ox.dq
    public void dq(String str, String str2, boolean z) {
        CopyOnWriteArraySet copyOnWriteArraySet = new CopyOnWriteArraySet();
        copyOnWriteArraySet.addAll(dq.d(ox(str), copyOnWriteArraySet));
        CopyOnWriteArraySet copyOnWriteArraySet2 = new CopyOnWriteArraySet();
        Iterator it = copyOnWriteArraySet.iterator();
        while (it.hasNext()) {
            String str3 = (String) it.next();
            dq dq2 = dq.dq(str3);
            if (TextUtils.equals(dq2.iw, str2)) {
                dq2.ox = z;
                copyOnWriteArraySet2.add(dq2.toString());
            } else {
                copyOnWriteArraySet2.add(str3);
            }
        }
        dq.dq(ox(str), copyOnWriteArraySet2);
    }

    @Override // com.bytedance.sdk.openadsdk.core.p.ox.dq
    public boolean ox(String str, s.dq dqVar) {
        CopyOnWriteArraySet copyOnWriteArraySet = new CopyOnWriteArraySet();
        copyOnWriteArraySet.addAll(dq.d(ox(str), copyOnWriteArraySet));
        Iterator it = copyOnWriteArraySet.iterator();
        while (it.hasNext()) {
            if (dq.dq((String) it.next()).dq(dqVar)) {
                return true;
            }
        }
        return false;
    }
}
