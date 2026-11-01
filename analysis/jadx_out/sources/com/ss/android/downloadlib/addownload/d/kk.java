package com.ss.android.downloadlib.addownload.d;

import android.content.SharedPreferences;
import com.ss.android.downloadlib.addownload.no;
import j$.util.concurrent.ConcurrentHashMap;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import org.json.JSONObject;

/* loaded from: classes.dex */
public class kk {

    public static class dq {
        private static kk dq = new kk();
    }

    private kk() {
    }

    public static kk dq() {
        return dq.dq;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public SharedPreferences ox() {
        return no.getContext().getSharedPreferences("sp_ad_download_event", 0);
    }

    public ConcurrentHashMap<Long, com.ss.android.downloadad.api.dq.d> d() {
        ConcurrentHashMap<Long, com.ss.android.downloadad.api.dq.d> concurrentHashMap = new ConcurrentHashMap<>();
        Map<String, ?> all = ox().getAll();
        if (all != null) {
            for (Map.Entry<String, ?> entry : all.entrySet()) {
                if (entry.getValue() != null) {
                    try {
                        Long valueOf = Long.valueOf(entry.getKey());
                        long longValue = valueOf.longValue();
                        com.ss.android.downloadad.api.dq.d d2 = com.ss.android.downloadad.api.dq.d.d(new JSONObject(String.valueOf(entry.getValue())));
                        if (longValue > 0 && d2 != null) {
                            concurrentHashMap.put(valueOf, d2);
                        }
                    } catch (Exception e2) {
                        e2.printStackTrace();
                    }
                }
            }
        }
        return concurrentHashMap;
    }

    public void dq(com.ss.android.downloadad.api.dq.d dVar) {
        ArrayList arrayList = new ArrayList();
        arrayList.add(dVar);
        dq((Collection<com.ss.android.downloadad.api.dq.d>) arrayList);
    }

    public synchronized void dq(final Collection<com.ss.android.downloadad.api.dq.d> collection) {
        if (collection != null) {
            if (!collection.isEmpty()) {
                com.ss.android.downloadlib.s.dq().dq(new Runnable() { // from class: com.ss.android.downloadlib.addownload.d.kk.1
                    @Override // java.lang.Runnable
                    public void run() {
                        SharedPreferences.Editor edit = kk.this.ox().edit();
                        for (com.ss.android.downloadad.api.dq.d dVar : collection) {
                            if (dVar != null && dVar.d() != 0) {
                                edit.putString(String.valueOf(dVar.d()), dVar.xi().toString());
                            }
                        }
                        edit.apply();
                    }
                }, true);
            }
        }
    }

    public void dq(final List<String> list) {
        if (list == null || list.isEmpty()) {
            return;
        }
        com.ss.android.downloadlib.s.dq().dq(new Runnable() { // from class: com.ss.android.downloadlib.addownload.d.kk.2
            @Override // java.lang.Runnable
            public void run() {
                SharedPreferences.Editor edit = kk.this.ox().edit();
                Iterator it = list.iterator();
                while (it.hasNext()) {
                    edit.remove((String) it.next());
                }
                edit.apply();
            }
        }, true);
    }
}
