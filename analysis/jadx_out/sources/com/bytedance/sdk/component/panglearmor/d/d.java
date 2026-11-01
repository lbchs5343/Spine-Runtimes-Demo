package com.bytedance.sdk.component.panglearmor.d;

import android.content.SharedPreferences;
import android.text.TextUtils;
import com.bytedance.sdk.component.panglearmor.SoftDecTool;
import java.util.Iterator;
import java.util.LinkedList;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes.dex */
public class d {
    private static volatile d dq;

    /* renamed from: d, reason: collision with root package name */
    private SharedPreferences f2168d;
    private long iw;
    private LinkedList<JSONObject> ox;
    private LinkedList<JSONObject> p;
    private LinkedList<JSONObject> s;

    public d() {
        this.f2168d = null;
        this.ox = null;
        this.p = null;
        this.s = null;
        this.iw = 0L;
        this.f2168d = SoftDecTool.getSharedPreferences("pithar");
        this.ox = ox("sp_angle");
        this.p = ox("sp_screen");
        this.s = ox("sp_net");
        this.iw = s.dq().ox() / s.dq().p();
    }

    public static d dq() {
        if (dq == null) {
            synchronized (d.class) {
                try {
                    if (dq == null) {
                        dq = new d();
                    }
                } finally {
                }
            }
        }
        return dq;
    }

    private LinkedList<JSONObject> ox(String str) {
        LinkedList<JSONObject> linkedList = new LinkedList<>();
        SharedPreferences sharedPreferences = this.f2168d;
        if (sharedPreferences != null) {
            String string = sharedPreferences.getString(str, "");
            if (!TextUtils.isEmpty(string)) {
                for (String str2 : string.split("\\|")) {
                    if (!TextUtils.isEmpty(str2)) {
                        try {
                            linkedList.add(new JSONObject(str2));
                        } catch (Exception unused) {
                        }
                    }
                }
            }
        }
        return linkedList;
    }

    public synchronized void d(String str) {
        try {
            long currentTimeMillis = System.currentTimeMillis();
            if ("android.intent.action.SCREEN_OFF".equals(str)) {
                LinkedList<JSONObject> dq2 = dq("sp_screen");
                int i = 1;
                if (dq2 != null && dq2.size() > 0) {
                    JSONObject last = dq2.getLast();
                    if (last.optLong("t", 0L) / 3600000 == currentTimeMillis / 3600000) {
                        i = 1 + last.optInt("val", 0);
                        dq2.removeLast();
                    }
                }
                JSONObject jSONObject = new JSONObject();
                try {
                    jSONObject.put("t", currentTimeMillis);
                    jSONObject.put("val", i);
                    dq(jSONObject, "sp_screen");
                } catch (JSONException e2) {
                    throw new RuntimeException(e2);
                }
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    public LinkedList<JSONObject> dq(long j) {
        if (j == 0) {
            return this.ox;
        }
        LinkedList<JSONObject> linkedList = new LinkedList<>();
        long currentTimeMillis = System.currentTimeMillis();
        Iterator<JSONObject> it = this.ox.iterator();
        JSONObject jSONObject = null;
        while (it.hasNext()) {
            JSONObject next = it.next();
            if (currentTimeMillis - next.optLong("t", 0L) < j) {
                linkedList.add(next);
            } else {
                jSONObject = next;
            }
        }
        if (jSONObject != null && linkedList.size() < 2) {
            linkedList.addFirst(jSONObject);
        }
        return linkedList;
    }

    public LinkedList<JSONObject> dq(String str) {
        if ("sp_angle".equals(str)) {
            return this.ox;
        }
        if ("sp_screen".equals(str)) {
            return this.p;
        }
        if ("sp_net".equals(str)) {
            return this.s;
        }
        return null;
    }

    public synchronized void dq(int i) {
        try {
            long currentTimeMillis = System.currentTimeMillis();
            int i2 = i == 4 ? 1 : i > 0 ? 2 : 0;
            LinkedList<JSONObject> dq2 = dq("sp_net");
            if (dq2 != null && dq2.size() > 0) {
                JSONObject last = dq2.getLast();
                if (last.optLong("t", 0L) / 3600000 == currentTimeMillis / 3600000) {
                    i2 |= last.optInt("val", 0);
                    dq2.removeLast();
                }
            }
            JSONObject jSONObject = new JSONObject();
            try {
                jSONObject.put("t", currentTimeMillis);
                jSONObject.put("val", i2);
                dq(jSONObject, "sp_net");
            } catch (JSONException e2) {
                throw new RuntimeException(e2);
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    public void dq(String str, LinkedList<JSONObject> linkedList) {
        if (linkedList == null || this.f2168d == null) {
            return;
        }
        StringBuilder sb = new StringBuilder();
        Iterator<JSONObject> it = linkedList.iterator();
        while (it.hasNext()) {
            sb.append(it.next().toString());
            sb.append("\\|");
        }
        SharedPreferences.Editor edit = this.f2168d.edit();
        edit.putString(str, sb.toString());
        edit.apply();
    }

    public void dq(JSONObject jSONObject, String str) {
        LinkedList<JSONObject> dq2 = dq(str);
        if (dq2 == null) {
            return;
        }
        dq2.add(jSONObject);
        if (dq2.size() > this.iw) {
            dq2.removeFirst();
        }
        long currentTimeMillis = System.currentTimeMillis();
        long ox = currentTimeMillis - s.dq().ox();
        Iterator<JSONObject> it = dq2.iterator();
        JSONObject jSONObject2 = null;
        while (it.hasNext()) {
            JSONObject next = it.next();
            long optLong = next.optLong("t", 0L);
            if (optLong < ox) {
                it.remove();
                jSONObject2 = next;
            } else if (optLong > currentTimeMillis) {
                it.remove();
            }
        }
        if (jSONObject2 != null && dq2.size() < 2) {
            dq2.addFirst(jSONObject2);
        }
        dq(str, dq2);
    }
}
