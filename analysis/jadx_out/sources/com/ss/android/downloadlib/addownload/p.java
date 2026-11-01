package com.ss.android.downloadlib.addownload;

import android.os.Handler;
import com.ss.android.downloadlib.addownload.s;
import com.ss.android.socialbase.downloader.model.DownloadInfo;
import java.util.Map;
import java.util.concurrent.atomic.AtomicBoolean;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes.dex */
public class p {

    /* renamed from: d, reason: collision with root package name */
    private com.ss.android.downloadlib.addownload.d.s f9169d;
    private Handler dq;
    private AtomicBoolean ox = new AtomicBoolean(false);
    private AtomicBoolean p = new AtomicBoolean(false);

    public p(Handler handler) {
        this.dq = handler;
    }

    public static long d() {
        if (no.mp() != null) {
            return no.mp().dq();
        }
        return 0L;
    }

    private void d(com.ss.android.downloadad.api.dq.d dVar, JSONObject jSONObject, long j, long j2) {
        dVar.ig("1");
        com.ss.android.downloadlib.addownload.d.kk.dq().dq(dVar);
        try {
            jSONObject.putOpt("quite_clean_size", Long.valueOf(j2 - j));
        } catch (JSONException e2) {
            e2.printStackTrace();
        }
        com.ss.android.downloadlib.p.dq.dq().dq("cleanspace_download_after_quite_clean", jSONObject, dVar);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public long dq(Map<String, String> map) {
        if (map != null && map.size() != 0) {
            try {
                for (Map.Entry<String, String> entry : map.entrySet()) {
                    String key = entry.getKey();
                    String value = entry.getValue();
                    if ("content-length".equalsIgnoreCase(key)) {
                        return Long.parseLong(value);
                    }
                }
            } catch (Exception e2) {
                e2.printStackTrace();
            }
        }
        return 0L;
    }

    public static JSONObject dq(String str) {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.putOpt("clean_space_install_params", str);
            return jSONObject;
        } catch (JSONException e2) {
            e2.printStackTrace();
            return jSONObject;
        }
    }

    public static void dq(int i) {
        if (com.ss.android.downloadlib.mn.s.iw(i) && no.mp() != null && no.mp().d()) {
            no.mp();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:14:0x0080  */
    /* JADX WARN: Removed duplicated region for block: B:17:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void dq(int i, String str, long j, final com.ss.android.downloadad.api.dq.d dVar, long j2, final s.dq dqVar) {
        boolean z;
        this.ox.set(true);
        if (j > 0) {
            JSONObject jSONObject = new JSONObject();
            try {
                jSONObject.putOpt("apk_size", Long.valueOf(j));
            } catch (JSONException e2) {
                e2.printStackTrace();
            }
            long d2 = (com.ss.android.downloadlib.mn.s.d(i) + Double.valueOf((com.ss.android.downloadlib.mn.s.dq(i) + 1.0d) * j).longValue()) - j2;
            long p = p();
            if (p < d2) {
                dq(dVar, jSONObject, d2, p);
                dq(dVar);
                long p2 = p();
                if (p2 < d2) {
                    dVar.p(true);
                    final String dq = dVar.dq();
                    com.ss.android.downloadlib.addownload.ox.p.dq().dq(dq, new com.ss.android.downloadlib.addownload.ox.s() { // from class: com.ss.android.downloadlib.addownload.p.4
                    });
                    z = dq(i, dVar, str, d2);
                    if (z) {
                        dVar.s(true);
                    }
                    if (z) {
                        this.dq.post(new Runnable() { // from class: com.ss.android.downloadlib.addownload.p.5
                            @Override // java.lang.Runnable
                            public void run() {
                                dqVar.dq();
                            }
                        });
                        return;
                    }
                    return;
                }
                d(dVar, jSONObject, p, p2);
            }
        }
        z = false;
        if (z) {
        }
    }

    private static void dq(com.ss.android.downloadad.api.dq.d dVar) {
        long p = p();
        if (no.mp() != null) {
            no.mp();
        }
        com.ss.android.downloadlib.addownload.ox.ox.dq();
        com.ss.android.downloadlib.addownload.ox.ox.d();
        if (com.ss.android.downloadlib.mn.s.mn(dVar.gh())) {
            com.ss.android.downloadlib.addownload.ox.ox.dq(no.getContext());
        }
        long p2 = p();
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.putOpt("quite_clean_size", Long.valueOf(p2 - p));
        } catch (JSONException e2) {
            e2.printStackTrace();
        }
        com.ss.android.downloadlib.p.dq.dq().dq("clean_quite_finish", jSONObject, dVar);
    }

    private void dq(com.ss.android.downloadad.api.dq.d dVar, JSONObject jSONObject, long j, long j2) {
        try {
            jSONObject.putOpt("available_space", Long.valueOf(j2));
            jSONObject.putOpt("apk_download_need_size", Long.valueOf(j));
        } catch (JSONException e2) {
            e2.printStackTrace();
        }
        com.ss.android.downloadlib.p.dq.dq().dq("clean_space_no_enough_for_download", jSONObject, dVar);
    }

    private void dq(String str, com.ss.android.downloadad.api.dq.d dVar, final s.d dVar2) {
        if (dVar2 == null) {
            return;
        }
        com.ss.android.socialbase.downloader.network.dq.d.dq(str, new com.ss.android.socialbase.downloader.network.o() { // from class: com.ss.android.downloadlib.addownload.p.3
            @Override // com.ss.android.socialbase.downloader.network.o
            public void dq(Map<String, String> map) {
                if (p.this.ox.get()) {
                    return;
                }
                p.this.ox.set(true);
                long dq = p.this.dq(map);
                if (dq > 0) {
                    JSONObject jSONObject = new JSONObject();
                    try {
                        jSONObject.putOpt("apk_size", Long.valueOf(dq));
                        jSONObject.putOpt("available_space", Long.valueOf(p.p()));
                    } catch (JSONException e2) {
                        e2.printStackTrace();
                    }
                }
                dVar2.dq(dq);
            }
        });
    }

    private boolean dq(int i, com.ss.android.downloadad.api.dq.d dVar, String str, long j) {
        if (!com.ss.android.downloadlib.mn.s.iw(i)) {
            return false;
        }
        if (no.mp() != null) {
            return no.mp().dq(i, str, true, j);
        }
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.putOpt("show_dialog_result", 3);
        } catch (JSONException e2) {
            e2.printStackTrace();
        }
        com.ss.android.downloadlib.p.dq.dq().dq("cleanspace_window_show", jSONObject, dVar);
        return false;
    }

    public static boolean dq(final DownloadInfo downloadInfo, long j) {
        int id = downloadInfo.getId();
        if (!com.ss.android.downloadlib.mn.s.iw(id) || no.mp() == null) {
            return false;
        }
        boolean dq = no.mp().dq(id, downloadInfo.getUrl(), false, j);
        if (dq) {
            com.ss.android.downloadlib.addownload.ox.p.dq().dq(downloadInfo.getUrl(), new com.ss.android.downloadlib.addownload.ox.s() { // from class: com.ss.android.downloadlib.addownload.p.6
            });
        }
        return dq;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static long p() {
        return com.ss.android.downloadlib.mn.mp.d(0L);
    }

    public void dq(final int i, final long j, long j2, s.dq dqVar) {
        final s.dq dqVar2;
        this.p.set(false);
        if (dqVar == null) {
            return;
        }
        if (!com.ss.android.downloadlib.mn.s.iw(i) || !com.ss.android.downloadlib.mn.s.s(i)) {
            dqVar.dq();
            return;
        }
        long ox = com.ss.android.downloadlib.mn.s.ox(i);
        this.ox.set(false);
        final String downloadUrl = this.f9169d.f9152d.getDownloadUrl();
        com.ss.android.downloadad.api.dq.d d2 = com.ss.android.downloadlib.addownload.d.iw.dq().d(downloadUrl);
        if (d2 == null) {
            com.ss.android.downloadlib.addownload.d.s sVar = this.f9169d;
            d2 = new com.ss.android.downloadad.api.dq.d(sVar.f9152d, sVar.ox, sVar.p, 0);
            com.ss.android.downloadlib.addownload.d.iw.dq().dq(d2);
        }
        final com.ss.android.downloadad.api.dq.d dVar = d2;
        dVar.s(false);
        if (no.mp() != null) {
            no.mp();
            dVar.d();
        }
        com.ss.android.downloadlib.addownload.ox.p.dq().dq(dVar.dq());
        boolean p = com.ss.android.downloadlib.mn.s.p(i);
        if (j2 > 0) {
            dq(i, downloadUrl, j2, dVar, j, dqVar);
            dqVar2 = dqVar;
        } else if (p) {
            dqVar2 = dqVar;
            dq(downloadUrl, dVar, new s.d() { // from class: com.ss.android.downloadlib.addownload.p.1
                @Override // com.ss.android.downloadlib.addownload.s.d
                public void dq(long j3) {
                    p.this.dq(i, downloadUrl, j3, dVar, j, dqVar2);
                }
            });
        } else {
            dqVar2 = dqVar;
            ox = 0;
        }
        this.dq.postDelayed(new Runnable() { // from class: com.ss.android.downloadlib.addownload.p.2
            @Override // java.lang.Runnable
            public void run() {
                if (p.this.ox.get()) {
                    return;
                }
                p.this.ox.set(true);
                dqVar2.dq();
            }
        }, ox);
    }

    public void dq(com.ss.android.downloadlib.addownload.d.s sVar) {
        this.f9169d = sVar;
    }

    public void dq(boolean z) {
        this.p.set(z);
    }

    public boolean dq() {
        return this.p.get();
    }
}
