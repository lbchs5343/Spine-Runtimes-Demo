package com.bytedance.sdk.component.dq;

import android.net.Uri;
import android.text.TextUtils;
import android.util.LruCache;
import com.bytedance.component.sdk.annotation.WorkerThread;
import com.bytedance.sdk.component.dq.no;
import j$.util.concurrent.ConcurrentHashMap;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.Executor;
import java.util.regex.Pattern;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes.dex */
class i {

    /* renamed from: d, reason: collision with root package name */
    private final LruCache<String, ox> f1867d;
    private final no.dq ox;
    private final String p;
    private final Map<String, List<d>> dq = new ConcurrentHashMap();
    private volatile boolean s = false;

    public static final class d {

        /* renamed from: d, reason: collision with root package name */
        k f1869d;
        Pattern dq;
        List<String> ox;
        List<String> p;

        private d() {
        }
    }

    public static class dq extends IllegalStateException {
        public dq(String str) {
            super(str);
        }
    }

    public static final class ox {
        k dq = k.PUBLIC;

        /* renamed from: d, reason: collision with root package name */
        Set<String> f1870d = new HashSet();
        Set<String> ox = new HashSet();
    }

    @WorkerThread
    public i(String str, int i, no.dq dqVar, final Executor executor, JSONObject jSONObject) {
        this.p = str;
        if (i <= 0) {
            this.f1867d = new LruCache<>(16);
        } else {
            this.f1867d = new LruCache<>(i);
        }
        this.ox = dqVar;
        if (jSONObject != null) {
            update(jSONObject);
        } else {
            p(str);
            new Object() { // from class: com.bytedance.sdk.component.dq.i.1
            };
        }
    }

    @WorkerThread
    private static d d(JSONObject jSONObject) throws JSONException {
        d dVar = new d();
        dVar.dq = Pattern.compile(jSONObject.getString("pattern"));
        dVar.f1869d = k.dq(jSONObject.getString("group"));
        dVar.ox = new ArrayList();
        JSONArray optJSONArray = jSONObject.optJSONArray("included_methods");
        if (optJSONArray != null) {
            for (int i = 0; i < optJSONArray.length(); i++) {
                dVar.ox.add(optJSONArray.getString(i));
            }
        }
        dVar.p = new ArrayList();
        JSONArray optJSONArray2 = jSONObject.optJSONArray("excluded_methods");
        if (optJSONArray2 != null) {
            for (int i2 = 0; i2 < optJSONArray2.length(); i2++) {
                dVar.p.add(optJSONArray2.getString(i2));
            }
        }
        return dVar;
    }

    private static String d(String str) {
        String[] split;
        int length;
        if (str == null || (length = (split = str.split("[.]")).length) < 2) {
            return null;
        }
        if (length == 2) {
            return str;
        }
        return split[length - 2] + "." + split[length - 1];
    }

    private ox dq(String str) throws dq {
        ox oxVar = new ox();
        Uri parse = Uri.parse(str);
        String scheme = parse.getScheme();
        String authority = parse.getAuthority();
        String d2 = d(authority);
        if (TextUtils.isEmpty(scheme) || TextUtils.isEmpty(authority) || d2 == null) {
            oxVar.dq = k.PUBLIC;
            return oxVar;
        }
        List<d> ox2 = ox(d2);
        if (ox2 == null) {
            return oxVar;
        }
        for (d dVar : ox2) {
            if (dVar.dq.matcher(str).find()) {
                if (dVar.f1869d.compareTo(oxVar.dq) >= 0) {
                    oxVar.dq = dVar.f1869d;
                }
                oxVar.f1870d.addAll(dVar.ox);
                oxVar.ox.addAll(dVar.p);
            }
        }
        this.f1867d.put(str, oxVar);
        return oxVar;
    }

    @WorkerThread
    private void dq(JSONObject jSONObject) {
        this.dq.clear();
        try {
            JSONObject jSONObject2 = jSONObject.getJSONObject("content");
            Iterator<String> keys = jSONObject2.keys();
            while (keys.hasNext()) {
                String next = keys.next();
                JSONArray jSONArray = jSONObject2.getJSONArray(next);
                LinkedList linkedList = new LinkedList();
                this.dq.put(next, linkedList);
                for (int i = 0; i < jSONArray.length(); i++) {
                    linkedList.add(d(jSONArray.getJSONObject(i)));
                }
            }
        } catch (JSONException e2) {
            kk.d("Parse configurations failed, response: " + jSONObject.toString(), e2);
        }
        this.s = true;
    }

    private List<d> ox(String str) throws dq {
        if (this.s) {
            return this.dq.get(str);
        }
        throw new dq("Permission config is outdated!");
    }

    private static String p(String str) {
        return "com.bytedance.ies.web.jsbridge2.PermissionConfig.".concat(String.valueOf(str));
    }

    public ox dq(String str, Set<String> set) {
        Uri parse = Uri.parse(str);
        String scheme = parse.getScheme();
        String authority = parse.getAuthority();
        String builder = new Uri.Builder().scheme(scheme).authority(authority).path(parse.getPath()).toString();
        ox oxVar = new ox();
        if (authority == null || authority.isEmpty()) {
            oxVar.dq = k.PUBLIC;
            return oxVar;
        }
        for (String str2 : set) {
            if (authority.equals(str2) || authority.endsWith(".".concat(String.valueOf(str2)))) {
                oxVar.dq = k.PRIVATE;
                return oxVar;
            }
        }
        ox oxVar2 = this.f1867d.get(builder);
        return oxVar2 != null ? oxVar2 : dq(builder);
    }

    public void update(JSONObject jSONObject) {
        dq(jSONObject);
        p(this.p);
    }
}
