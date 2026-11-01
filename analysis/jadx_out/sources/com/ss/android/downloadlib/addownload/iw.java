package com.ss.android.downloadlib.addownload;

import android.net.Uri;
import android.text.TextUtils;
import com.ss.android.download.api.download.DownloadModel;
import g.awf;
import j$.util.concurrent.ConcurrentHashMap;
import java.util.Iterator;
import java.util.Map;

/* loaded from: classes.dex */
public class iw {

    /* renamed from: d, reason: collision with root package name */
    private final ConcurrentHashMap<String, String> f9162d;
    private final ConcurrentHashMap<String, String> dq;

    public static class dq {
        private static iw dq = new iw();
    }

    private iw() {
        this.dq = new ConcurrentHashMap<>();
        this.f9162d = new ConcurrentHashMap<>();
    }

    public static iw dq() {
        return dq.dq;
    }

    private String ox(String str) {
        try {
            Uri parse = Uri.parse(str);
            String scheme = parse.getScheme();
            String lastPathSegment = parse.getLastPathSegment();
            if (!TextUtils.equals("https", scheme) || !lastPathSegment.endsWith(".apk")) {
                return null;
            }
            this.dq.put(str, lastPathSegment);
            return lastPathSegment;
        } catch (Exception e2) {
            e2.printStackTrace();
            return null;
        }
    }

    public void d(String str) {
        Iterator<Map.Entry<String, String>> it = this.f9162d.entrySet().iterator();
        while (it.hasNext()) {
            Map.Entry<String, String> next = it.next();
            if (TextUtils.equals(next.getValue(), str)) {
                it.remove();
                this.dq.remove(next.getKey());
            }
        }
    }

    public String dq(DownloadModel downloadModel) {
        String ox = ox(downloadModel.getDownloadUrl());
        if (ox == null || TextUtils.isEmpty(ox)) {
            return null;
        }
        StringBuilder o = awf.o(ox);
        o.append(downloadModel.getPackageName());
        String s = com.ss.android.socialbase.downloader.kk.iw.s(o.toString());
        this.f9162d.put(downloadModel.getDownloadUrl(), s);
        return s;
    }

    public String dq(String str) {
        if (TextUtils.isEmpty(str) || this.f9162d.isEmpty() || !this.f9162d.containsKey(str)) {
            return null;
        }
        String ox = ox(str);
        if (this.dq.containsValue(ox)) {
            for (Map.Entry<String, String> entry : this.dq.entrySet()) {
                if (TextUtils.equals(entry.getValue(), ox)) {
                    String str2 = this.f9162d.get(entry.getKey());
                    this.f9162d.put(str, str2);
                    if (!this.dq.containsKey(str)) {
                        this.dq.put(str, ox);
                    }
                    return str2;
                }
            }
        }
        return this.f9162d.get(str);
    }

    public void dq(String str, String str2) {
        if (TextUtils.isEmpty(str2) || TextUtils.isEmpty(str) || this.f9162d.containsKey(str2)) {
            return;
        }
        this.f9162d.put(str2, str);
    }
}
