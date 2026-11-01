package com.ss.android.downloadlib.addownload.ox;

import android.text.TextUtils;
import com.ss.android.downloadlib.addownload.no;
import com.ss.android.socialbase.downloader.downloader.Downloader;
import com.ss.android.socialbase.downloader.model.DownloadInfo;
import j$.util.concurrent.ConcurrentHashMap;
import java.io.File;
import java.util.HashMap;
import java.util.List;
import java.util.concurrent.CopyOnWriteArrayList;

/* loaded from: classes.dex */
public class p {
    private static volatile p dq;

    /* renamed from: d, reason: collision with root package name */
    private long f9168d = 0;
    private ConcurrentHashMap<String, s> ox = new ConcurrentHashMap<>();
    private HashMap<String, Integer> p = new HashMap<>();
    private List<String> s = new CopyOnWriteArrayList();

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

    public static void dq(com.ss.android.downloadad.api.dq.d dVar) {
        DownloadInfo downloadInfo;
        if (dVar == null || dVar.d() <= 0 || (downloadInfo = Downloader.getInstance(no.getContext()).getDownloadInfo(dVar.gh())) == null) {
            return;
        }
        dq(downloadInfo);
    }

    public static void dq(DownloadInfo downloadInfo) {
        if (downloadInfo == null || com.ss.android.socialbase.downloader.mn.dq.dq(downloadInfo.getId()).dq("delete_file_after_install", 0) == 0) {
            return;
        }
        try {
            String str = downloadInfo.getSavePath() + File.separator + downloadInfo.getName();
            if (TextUtils.isEmpty(str)) {
                return;
            }
            File file = new File(str);
            if (file.isFile() && file.exists()) {
                file.delete();
            }
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    public int d(String str) {
        if (TextUtils.isEmpty(str)) {
            return 0;
        }
        if (this.p == null) {
            this.p = new HashMap<>();
        }
        if (this.p.containsKey(str)) {
            return this.p.get(str).intValue();
        }
        return 0;
    }

    public long d() {
        return this.f9168d;
    }

    public void dq(String str) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        this.ox.remove(str);
    }

    public void dq(String str, s sVar) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        this.ox.put(str, sVar);
    }

    public void ox() {
        this.f9168d = System.currentTimeMillis();
    }
}
