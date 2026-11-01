package com.ss.android.download.api.download;

import org.json.JSONObject;

@Deprecated
/* loaded from: classes.dex */
public class ox implements DownloadEventConfig {

    /* renamed from: d, reason: collision with root package name */
    private boolean f9105d;
    private String dq;

    /* renamed from: f, reason: collision with root package name */
    private String f9106f;
    private String fw;
    private String ia;
    private Object ig;
    private String iw;
    private boolean jy;
    private String kk;
    private String mn;
    private boolean mp;
    private String no;
    private String o;
    private String ox;
    private String p;
    private boolean q;
    private String s;

    public static final class dq {

        /* renamed from: d, reason: collision with root package name */
        private boolean f9107d;
        private String dq;

        /* renamed from: f, reason: collision with root package name */
        private String f9108f;
        private String fw;
        private String ia;
        private Object ig;
        private String iw;
        private boolean jy;
        private String kk;
        private String mn;
        private boolean mp;
        private String no;
        private String o;
        private String ox;
        private String p;
        private boolean q;
        private String s;

        public ox dq() {
            return new ox(this);
        }
    }

    public ox() {
    }

    private ox(dq dqVar) {
        this.dq = dqVar.dq;
        this.f9105d = dqVar.f9107d;
        this.ox = dqVar.ox;
        this.p = dqVar.p;
        this.s = dqVar.s;
        this.iw = dqVar.iw;
        this.mn = dqVar.mn;
        this.ia = dqVar.ia;
        this.kk = dqVar.kk;
        this.o = dqVar.o;
        this.no = dqVar.no;
        this.ig = dqVar.ig;
        this.mp = dqVar.mp;
        this.q = dqVar.q;
        this.jy = dqVar.jy;
        this.f9106f = dqVar.f9108f;
        this.fw = dqVar.fw;
    }

    @Override // com.ss.android.download.api.download.DownloadEventConfig
    public String getClickButtonTag() {
        return this.dq;
    }

    @Override // com.ss.android.download.api.download.DownloadEventConfig
    public String getClickContinueLabel() {
        return this.iw;
    }

    @Override // com.ss.android.download.api.download.DownloadEventConfig
    public String getClickInstallLabel() {
        return this.mn;
    }

    @Override // com.ss.android.download.api.download.DownloadEventConfig
    public String getClickItemTag() {
        return null;
    }

    @Override // com.ss.android.download.api.download.DownloadEventConfig
    public String getClickLabel() {
        return this.ox;
    }

    @Override // com.ss.android.download.api.download.DownloadEventConfig
    public String getClickPauseLabel() {
        return this.s;
    }

    @Override // com.ss.android.download.api.download.DownloadEventConfig
    public String getClickStartLabel() {
        return this.p;
    }

    @Override // com.ss.android.download.api.download.DownloadEventConfig
    public int getDownloadScene() {
        return 0;
    }

    @Override // com.ss.android.download.api.download.DownloadEventConfig
    public Object getExtraEventObject() {
        return this.ig;
    }

    @Override // com.ss.android.download.api.download.DownloadEventConfig
    public JSONObject getExtraJson() {
        return null;
    }

    @Override // com.ss.android.download.api.download.DownloadEventConfig
    public JSONObject getParamsJson() {
        return null;
    }

    @Override // com.ss.android.download.api.download.DownloadEventConfig
    public String getRefer() {
        return this.fw;
    }

    @Override // com.ss.android.download.api.download.DownloadEventConfig
    public String getStorageDenyLabel() {
        return this.o;
    }

    @Override // com.ss.android.download.api.download.DownloadEventConfig
    public boolean isEnableClickEvent() {
        return this.f9105d;
    }

    @Override // com.ss.android.download.api.download.DownloadEventConfig
    public boolean isEnableV3Event() {
        return this.mp;
    }

    @Override // com.ss.android.download.api.download.DownloadEventConfig
    public void setDownloadScene(int i) {
    }

    @Override // com.ss.android.download.api.download.DownloadEventConfig
    public void setRefer(String str) {
    }
}
