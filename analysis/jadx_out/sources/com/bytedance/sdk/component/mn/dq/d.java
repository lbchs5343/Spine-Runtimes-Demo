package com.bytedance.sdk.component.mn.dq;

import android.text.TextUtils;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import org.json.JSONObject;

/* loaded from: classes.dex */
public class d implements com.bytedance.sdk.component.mn.d {

    /* renamed from: d, reason: collision with root package name */
    private ox f2002d;
    private com.bytedance.sdk.component.mn.dq dq;

    public d(com.bytedance.sdk.component.mn.dq dqVar) {
        this.dq = dqVar;
    }

    private <T> T d(String str, T t) {
        String d2;
        try {
            d2 = this.dq.d(this.f2002d.dq(str), "");
        } catch (Throwable unused) {
        }
        return TextUtils.isEmpty(d2) ? t : (T) new JSONObject((String) this.f2002d.d(d2)).get(str);
    }

    private <T> void dq(String str, T t) {
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put(str, t);
            this.dq.dq(this.f2002d.dq(str), this.f2002d.dq(jSONObject.toString()));
        } catch (Throwable unused) {
        }
    }

    @Override // com.bytedance.sdk.component.mn.dq
    public float d(String str, float f2) {
        com.bytedance.sdk.component.mn.dq dqVar = this.dq;
        return dqVar == null ? f2 : this.f2002d == null ? dqVar.d(str, f2) : ((Float) d(str, (String) Float.valueOf(f2))).floatValue();
    }

    @Override // com.bytedance.sdk.component.mn.dq
    public int d(String str, int i) {
        com.bytedance.sdk.component.mn.dq dqVar = this.dq;
        return dqVar == null ? i : this.f2002d == null ? dqVar.d(str, i) : ((Integer) d(str, (String) Integer.valueOf(i))).intValue();
    }

    @Override // com.bytedance.sdk.component.mn.dq
    public long d(String str, long j) {
        com.bytedance.sdk.component.mn.dq dqVar = this.dq;
        return dqVar == null ? j : this.f2002d == null ? dqVar.d(str, j) : ((Long) d(str, (String) Long.valueOf(j))).longValue();
    }

    @Override // com.bytedance.sdk.component.mn.dq
    public String d(String str, String str2) {
        com.bytedance.sdk.component.mn.dq dqVar = this.dq;
        return dqVar == null ? str2 : this.f2002d == null ? dqVar.d(str, str2) : (String) d(str, str2);
    }

    @Override // com.bytedance.sdk.component.mn.dq
    public Set<String> d(String str, Set<String> set) {
        com.bytedance.sdk.component.mn.dq dqVar = this.dq;
        if (dqVar == null) {
            return set;
        }
        ox oxVar = this.f2002d;
        if (oxVar == null) {
            return dqVar.d(str, set);
        }
        Set<String> d2 = dqVar.d(oxVar.dq(str), set);
        HashSet hashSet = new HashSet();
        Iterator<String> it = d2.iterator();
        while (it.hasNext()) {
            hashSet.add(this.f2002d.d(it.next()));
        }
        return hashSet;
    }

    @Override // com.bytedance.sdk.component.mn.dq
    public void d() {
        com.bytedance.sdk.component.mn.dq dqVar = this.dq;
        if (dqVar == null) {
            return;
        }
        dqVar.d();
    }

    @Override // com.bytedance.sdk.component.mn.dq
    public boolean d(String str, boolean z) {
        com.bytedance.sdk.component.mn.dq dqVar = this.dq;
        return dqVar == null ? z : this.f2002d == null ? dqVar.d(str, z) : ((Boolean) d(str, (String) Boolean.valueOf(z))).booleanValue();
    }

    @Override // com.bytedance.sdk.component.mn.dq
    public Map<String, ?> dq() {
        try {
            com.bytedance.sdk.component.mn.dq dqVar = this.dq;
            if (dqVar == null) {
                return Collections.EMPTY_MAP;
            }
            Map<String, ?> dq = dqVar.dq();
            if (this.f2002d == null) {
                return dq;
            }
            HashMap hashMap = new HashMap();
            for (Map.Entry<String, ?> entry : dq.entrySet()) {
                String str = (String) this.f2002d.d(entry.getKey());
                Object value = entry.getValue();
                if (value instanceof Set) {
                    HashSet hashSet = new HashSet();
                    Iterator it = ((Set) value).iterator();
                    while (it.hasNext()) {
                        hashSet.add(this.f2002d.d((String) it.next()));
                    }
                    hashMap.put(str, hashSet);
                } else {
                    hashMap.put(str, new JSONObject((String) this.f2002d.d(value.toString())).get(str));
                }
            }
            return hashMap;
        } catch (Throwable unused) {
            return Collections.EMPTY_MAP;
        }
    }

    public void dq(ox oxVar) {
        this.f2002d = oxVar;
    }

    @Override // com.bytedance.sdk.component.mn.dq
    public void dq(String str) {
        com.bytedance.sdk.component.mn.dq dqVar = this.dq;
        if (dqVar == null) {
            return;
        }
        if (this.f2002d == null) {
            dqVar.dq(str);
        }
        this.dq.dq(this.f2002d.dq(str));
    }

    @Override // com.bytedance.sdk.component.mn.dq
    public void dq(String str, float f2) {
        com.bytedance.sdk.component.mn.dq dqVar = this.dq;
        if (dqVar == null) {
            return;
        }
        if (this.f2002d == null) {
            dqVar.dq(str, f2);
        } else {
            dq(str, (String) Float.valueOf(f2));
        }
    }

    @Override // com.bytedance.sdk.component.mn.dq
    public void dq(String str, int i) {
        com.bytedance.sdk.component.mn.dq dqVar = this.dq;
        if (dqVar == null) {
            return;
        }
        if (this.f2002d == null) {
            dqVar.dq(str, i);
        } else {
            dq(str, (String) Integer.valueOf(i));
        }
    }

    @Override // com.bytedance.sdk.component.mn.dq
    public void dq(String str, long j) {
        com.bytedance.sdk.component.mn.dq dqVar = this.dq;
        if (dqVar == null) {
            return;
        }
        if (this.f2002d == null) {
            dqVar.dq(str, j);
        } else {
            dq(str, (String) Long.valueOf(j));
        }
    }

    @Override // com.bytedance.sdk.component.mn.dq
    public void dq(String str, String str2) {
        com.bytedance.sdk.component.mn.dq dqVar = this.dq;
        if (dqVar == null) {
            return;
        }
        if (this.f2002d == null) {
            dqVar.dq(str, str2);
        } else {
            dq(str, str2);
        }
    }

    @Override // com.bytedance.sdk.component.mn.dq
    public void dq(String str, Set<String> set) {
        com.bytedance.sdk.component.mn.dq dqVar = this.dq;
        if (dqVar == null) {
            return;
        }
        if (this.f2002d == null) {
            dqVar.dq(str, set);
            return;
        }
        HashSet hashSet = new HashSet();
        Iterator<String> it = set.iterator();
        while (it.hasNext()) {
            hashSet.add(this.f2002d.dq(it.next()));
        }
        this.dq.dq(this.f2002d.dq(str), hashSet);
    }

    @Override // com.bytedance.sdk.component.mn.dq
    public void dq(String str, boolean z) {
        com.bytedance.sdk.component.mn.dq dqVar = this.dq;
        if (dqVar == null) {
            return;
        }
        if (this.f2002d == null) {
            dqVar.dq(str, z);
        } else {
            dq(str, (String) Boolean.valueOf(z));
        }
    }
}
