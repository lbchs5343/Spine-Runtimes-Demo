package com.ss.android.downloadlib.addownload.d;

import android.text.TextUtils;
import com.ss.android.download.api.download.DownloadController;
import com.ss.android.download.api.download.DownloadEventConfig;
import com.ss.android.download.api.download.DownloadModel;
import com.ss.android.downloadad.api.download.AdDownloadController;
import com.ss.android.downloadad.api.download.AdDownloadEventConfig;
import com.ss.android.downloadad.api.download.AdDownloadModel;
import java.util.List;
import org.json.JSONObject;

/* loaded from: classes.dex */
public class s implements com.ss.android.downloadad.api.dq.dq {

    /* renamed from: d, reason: collision with root package name */
    public DownloadModel f9152d;
    public long dq;
    public DownloadEventConfig ox;
    public DownloadController p;
    public com.ss.android.downloadad.api.dq.d s;

    public s() {
    }

    public s(long j, DownloadModel downloadModel, DownloadEventConfig downloadEventConfig, DownloadController downloadController) {
        this.dq = j;
        this.f9152d = downloadModel;
        this.ox = downloadEventConfig;
        this.p = downloadController;
    }

    @Override // com.ss.android.downloadad.api.dq.dq
    public JSONObject cd() {
        return this.f9152d.getDownloadSettings();
    }

    @Override // com.ss.android.downloadad.api.dq.dq
    public long d() {
        return this.f9152d.getId();
    }

    @Override // com.ss.android.downloadad.api.dq.dq
    public String dq() {
        return this.f9152d.getDownloadUrl();
    }

    public boolean e() {
        if (wp()) {
            return false;
        }
        if (!this.f9152d.isAd()) {
            return this.f9152d instanceof AdDownloadModel;
        }
        DownloadModel downloadModel = this.f9152d;
        return (downloadModel instanceof AdDownloadModel) && !TextUtils.isEmpty(downloadModel.getLogExtra()) && (this.ox instanceof AdDownloadEventConfig) && (this.p instanceof AdDownloadController);
    }

    @Override // com.ss.android.downloadad.api.dq.dq
    public JSONObject f() {
        return this.ox.getExtraJson();
    }

    @Override // com.ss.android.downloadad.api.dq.dq
    public boolean fw() {
        return this.p.enableNewActivity();
    }

    @Override // com.ss.android.downloadad.api.dq.dq
    public int gh() {
        return 0;
    }

    @Override // com.ss.android.downloadad.api.dq.dq
    public DownloadModel i() {
        return this.f9152d;
    }

    @Override // com.ss.android.downloadad.api.dq.dq
    public int ia() {
        if (this.p.getDownloadMode() == 2) {
            return 2;
        }
        return this.f9152d.getFunnelType();
    }

    @Override // com.ss.android.downloadad.api.dq.dq
    public long ig() {
        return this.f9152d.getExtraValue();
    }

    @Override // com.ss.android.downloadad.api.dq.dq
    public String iw() {
        if (this.f9152d.getDeepLink() != null) {
            return this.f9152d.getDeepLink().getOpenUrl();
        }
        return null;
    }

    @Override // com.ss.android.downloadad.api.dq.dq
    public Object jy() {
        return this.ox.getExtraEventObject();
    }

    @Override // com.ss.android.downloadad.api.dq.dq
    public DownloadController k() {
        return this.p;
    }

    @Override // com.ss.android.downloadad.api.dq.dq
    public String kk() {
        return this.ox.getRefer();
    }

    @Override // com.ss.android.downloadad.api.dq.dq
    public DownloadEventConfig le() {
        return this.ox;
    }

    @Override // com.ss.android.downloadad.api.dq.dq
    public JSONObject mn() {
        return this.f9152d.getExtra();
    }

    @Override // com.ss.android.downloadad.api.dq.dq
    public boolean mp() {
        return this.ox.isEnableV3Event();
    }

    @Override // com.ss.android.downloadad.api.dq.dq
    public JSONObject no() {
        return this.ox.getParamsJson();
    }

    @Override // com.ss.android.downloadad.api.dq.dq
    public String o() {
        return this.ox.getClickButtonTag();
    }

    @Override // com.ss.android.downloadad.api.dq.dq
    public boolean ox() {
        return this.f9152d.isAd();
    }

    @Override // com.ss.android.downloadad.api.dq.dq
    public String p() {
        return this.f9152d.getLogExtra();
    }

    @Override // com.ss.android.downloadad.api.dq.dq
    public List<String> q() {
        return this.f9152d.getClickTrackUrl();
    }

    @Override // com.ss.android.downloadad.api.dq.dq
    public int r() {
        return this.ox.getDownloadScene();
    }

    @Override // com.ss.android.downloadad.api.dq.dq
    public String s() {
        return this.f9152d.getPackageName();
    }

    public boolean wp() {
        DownloadModel downloadModel;
        if (this.dq == 0 || (downloadModel = this.f9152d) == null || this.ox == null || this.p == null) {
            return true;
        }
        return downloadModel.isAd() && this.dq <= 0;
    }
}
