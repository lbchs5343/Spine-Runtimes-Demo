package com.ss.android.downloadlib.addownload;

import android.os.Looper;
import android.os.Message;
import com.ss.android.downloadlib.mn.q;
import com.ss.android.socialbase.downloader.exception.BaseException;
import com.ss.android.socialbase.downloader.model.DownloadInfo;
import org.json.JSONObject;

/* loaded from: classes.dex */
public class dq implements q.dq {

    /* renamed from: d, reason: collision with root package name */
    private static dq f9153d = null;
    private static final String dq = "dq";
    private com.ss.android.downloadlib.mn.q ox = new com.ss.android.downloadlib.mn.q(Looper.getMainLooper(), this);
    private long p;

    private dq() {
    }

    public static dq dq() {
        if (f9153d == null) {
            synchronized (dq.class) {
                try {
                    if (f9153d == null) {
                        f9153d = new dq();
                    }
                } finally {
                }
            }
        }
        return f9153d;
    }

    private void dq(com.ss.android.downloadlib.addownload.d.dq dqVar, int i) {
        int i2;
        if (no.ig() == null || no.ig().dq() || dqVar == null) {
            return;
        }
        if (2 == i) {
            com.ss.android.downloadad.api.dq.d p = com.ss.android.downloadlib.addownload.d.iw.dq().p(dqVar.f9144d);
            JSONObject jSONObject = new JSONObject();
            try {
                jSONObject.put("ttdownloader_type", "miui_silent_install");
                if (com.ss.android.downloadlib.mn.mp.s(no.getContext(), dqVar.p)) {
                    jSONObject.put("ttdownloader_message", "miui_silent_install_succeed");
                    i2 = 4;
                } else {
                    jSONObject.put("ttdownloader_message", "miui_silent_install_failed: has started service");
                    i2 = 5;
                }
            } catch (Exception unused) {
                i2 = -1;
            }
            no.iw().dq(null, new BaseException(i2, jSONObject.toString()), i2);
            com.ss.android.downloadlib.p.dq.dq().dq("embeded_ad", "ah_result", jSONObject, p);
        }
        if (com.ss.android.downloadlib.mn.mp.s(no.getContext(), dqVar.p)) {
            com.ss.android.downloadlib.p.dq.dq().dq("delayinstall_installed", dqVar.f9144d);
            return;
        }
        if (!com.ss.android.downloadlib.mn.mp.dq(dqVar.mn)) {
            com.ss.android.downloadlib.p.dq.dq().dq("delayinstall_file_lost", dqVar.f9144d);
        } else if (com.ss.android.downloadlib.addownload.dq.dq.dq().dq(dqVar.p)) {
            com.ss.android.downloadlib.p.dq.dq().dq("delayinstall_conflict_with_back_dialog", dqVar.f9144d);
        } else {
            com.ss.android.downloadlib.p.dq.dq().dq("delayinstall_install_start", dqVar.f9144d);
            com.ss.android.socialbase.appdownloader.p.dq(no.getContext(), (int) dqVar.dq);
        }
    }

    @Override // com.ss.android.downloadlib.mn.q.dq
    public void dq(Message message) {
        if (message.what != 200) {
            return;
        }
        dq((com.ss.android.downloadlib.addownload.d.dq) message.obj, message.arg1);
    }

    public void dq(DownloadInfo downloadInfo, long j, long j2, String str, String str2, String str3, String str4) {
        int i;
        com.ss.android.downloadlib.addownload.d.dq dqVar = new com.ss.android.downloadlib.addownload.d.dq(downloadInfo.getId(), j, j2, str, str2, str3, str4);
        if (com.ss.android.socialbase.downloader.mn.dq.dq(downloadInfo.getId()).dq("back_miui_silent_install", 1) == 0 && ((com.ss.android.socialbase.appdownloader.iw.s.mp() || com.ss.android.socialbase.appdownloader.iw.s.q()) && com.ss.android.socialbase.downloader.kk.o.dq(no.getContext(), "com.miui.securitycore", "com.miui.enterprise.service.EntInstallService"))) {
            if (com.ss.android.socialbase.downloader.kk.iw.dq(downloadInfo.getTempCacheData().get("extra_silent_install_succeed"), false)) {
                Message obtainMessage = this.ox.obtainMessage(200, dqVar);
                obtainMessage.arg1 = 2;
                this.ox.sendMessageDelayed(obtainMessage, r13.dq("check_silent_install_interval", 60000));
                return;
            }
            com.ss.android.downloadad.api.dq.d p = com.ss.android.downloadlib.addownload.d.iw.dq().p(dqVar.f9144d);
            JSONObject jSONObject = new JSONObject();
            try {
                jSONObject.put("ttdownloader_type", "miui_silent_install");
                jSONObject.put("ttdownloader_message", "miui_silent_install_failed: has not started service");
                i = 5;
            } catch (Exception unused) {
                i = -1;
            }
            no.iw().dq(null, new BaseException(i, jSONObject.toString()), i);
            com.ss.android.downloadlib.p.dq.dq().dq("embeded_ad", "ah_result", jSONObject, p);
        }
        if (com.ss.android.downloadlib.mn.s.ox()) {
            long currentTimeMillis = System.currentTimeMillis() - this.p;
            long p2 = com.ss.android.downloadlib.mn.s.p();
            if (currentTimeMillis < com.ss.android.downloadlib.mn.s.s()) {
                long s = com.ss.android.downloadlib.mn.s.s() - currentTimeMillis;
                p2 += s;
                this.p = System.currentTimeMillis() + s;
            } else {
                this.p = System.currentTimeMillis();
            }
            com.ss.android.downloadlib.mn.q qVar = this.ox;
            qVar.sendMessageDelayed(qVar.obtainMessage(200, dqVar), p2);
        }
    }
}
