package com.ss.android.downloadlib.addownload.dq;

import android.text.TextUtils;
import com.ss.android.downloadlib.addownload.no;
import java.util.Iterator;
import java.util.concurrent.CopyOnWriteArrayList;
import org.json.JSONObject;

/* loaded from: classes.dex */
class d {
    public void d(String str, String str2) {
        if (TextUtils.isEmpty(str) || TextUtils.isEmpty(str2)) {
            return;
        }
        no.getContext().getSharedPreferences(str, 0).edit().putString(str2, "").apply();
    }

    public CopyOnWriteArrayList<com.ss.android.downloadlib.addownload.d.dq> dq(String str, String str2) {
        CopyOnWriteArrayList<com.ss.android.downloadlib.addownload.d.dq> copyOnWriteArrayList = new CopyOnWriteArrayList<>();
        try {
            String string = no.getContext().getSharedPreferences(str, 0).getString(str2, "");
            if (!TextUtils.isEmpty(string)) {
                JSONObject jSONObject = new JSONObject(string);
                Iterator<String> keys = jSONObject.keys();
                while (keys.hasNext()) {
                    com.ss.android.downloadlib.addownload.d.dq dq = com.ss.android.downloadlib.addownload.d.dq.dq(jSONObject.optJSONObject(keys.next()));
                    if (dq != null) {
                        copyOnWriteArrayList.add(dq);
                    }
                }
            }
            return copyOnWriteArrayList;
        } catch (Exception e2) {
            e2.printStackTrace();
            return copyOnWriteArrayList;
        }
    }

    public void dq(String str, String str2, CopyOnWriteArrayList<com.ss.android.downloadlib.addownload.d.dq> copyOnWriteArrayList) {
        if (copyOnWriteArrayList == null) {
            return;
        }
        JSONObject jSONObject = new JSONObject();
        try {
            Iterator<com.ss.android.downloadlib.addownload.d.dq> it = copyOnWriteArrayList.iterator();
            while (it.hasNext()) {
                com.ss.android.downloadlib.addownload.d.dq next = it.next();
                if (next != null) {
                    jSONObject.put(String.valueOf(next.f9144d), next.dq());
                }
            }
        } catch (Exception e2) {
            e2.printStackTrace();
        }
        no.getContext().getSharedPreferences(str, 0).edit().putString(str2, jSONObject.toString()).apply();
    }
}
