package com.bytedance.sdk.openadsdk;

import com.bytedance.sdk.openadsdk.mediation.init.IMediationConfig;
import java.util.HashMap;
import java.util.Map;

/* loaded from: classes.dex */
public class CSJConfig implements AdConfig {

    /* renamed from: d, reason: collision with root package name */
    private String f2384d;
    private String dq;

    /* renamed from: f, reason: collision with root package name */
    private boolean f2385f;
    private IMediationConfig fw;
    private boolean ia;
    private TTCustomController ig;
    private int iw;
    private int jy;
    private int[] kk;
    private boolean mn;
    private int mp;
    private Map<String, Object> no;
    private boolean o;
    private boolean ox;
    private String p;
    private int q;
    private String s;

    public static class dq {

        /* renamed from: d, reason: collision with root package name */
        private String f2386d;
        private String dq;

        /* renamed from: f, reason: collision with root package name */
        private IMediationConfig f2387f;
        private int ig;
        private boolean jy;
        private int[] kk;
        private TTCustomController no;
        private String p;
        private String s;
        private boolean ox = false;
        private int iw = 0;
        private boolean mn = true;
        private boolean ia = false;
        private boolean o = false;
        private int mp = 2;
        private int q = 0;
        private Map<String, Object> fw = null;

        public dq d(int i) {
            this.ig = i;
            return this;
        }

        public dq d(String str) {
            this.f2386d = str;
            return this;
        }

        public dq d(boolean z) {
            this.mn = z;
            return this;
        }

        public dq dq(int i) {
            this.iw = i;
            return this;
        }

        public dq dq(TTCustomController tTCustomController) {
            this.no = tTCustomController;
            return this;
        }

        public dq dq(IMediationConfig iMediationConfig) {
            this.f2387f = iMediationConfig;
            return this;
        }

        public dq dq(String str) {
            this.dq = str;
            return this;
        }

        public dq dq(String str, Object obj) {
            if (this.fw == null) {
                this.fw = new HashMap();
            }
            this.fw.put(str, obj);
            return this;
        }

        public dq dq(boolean z) {
            this.ox = z;
            return this;
        }

        public dq dq(int... iArr) {
            this.kk = iArr;
            return this;
        }

        public dq ox(int i) {
            this.mp = i;
            return this;
        }

        public dq ox(String str) {
            this.p = str;
            return this;
        }

        public dq ox(boolean z) {
            this.ia = z;
            return this;
        }

        public dq p(int i) {
            this.q = i;
            return this;
        }

        public dq p(String str) {
            this.s = str;
            return this;
        }

        public dq p(boolean z) {
            this.o = z;
            return this;
        }

        public dq s(boolean z) {
            this.jy = z;
            return this;
        }
    }

    public CSJConfig(dq dqVar) {
        this.ox = false;
        this.iw = 0;
        this.mn = true;
        this.ia = false;
        this.o = false;
        this.dq = dqVar.dq;
        this.f2384d = dqVar.f2386d;
        this.ox = dqVar.ox;
        this.p = dqVar.p;
        this.s = dqVar.s;
        this.iw = dqVar.iw;
        this.mn = dqVar.mn;
        this.ia = dqVar.ia;
        this.kk = dqVar.kk;
        this.o = dqVar.o;
        this.ig = dqVar.no;
        this.mp = dqVar.ig;
        this.jy = dqVar.q;
        this.q = dqVar.mp;
        this.f2385f = dqVar.jy;
        this.fw = dqVar.f2387f;
        this.no = dqVar.fw;
    }

    @Override // com.bytedance.sdk.openadsdk.AdConfig
    public int getAgeGroup() {
        return this.jy;
    }

    @Override // com.bytedance.sdk.openadsdk.AdConfig
    public String getAppId() {
        return this.dq;
    }

    @Override // com.bytedance.sdk.openadsdk.AdConfig
    public String getAppName() {
        return this.f2384d;
    }

    @Override // com.bytedance.sdk.openadsdk.AdConfig
    public TTCustomController getCustomController() {
        return this.ig;
    }

    @Override // com.bytedance.sdk.openadsdk.AdConfig
    public String getData() {
        return this.s;
    }

    @Override // com.bytedance.sdk.openadsdk.AdConfig
    public int[] getDirectDownloadNetworkType() {
        return this.kk;
    }

    @Override // com.bytedance.sdk.openadsdk.AdConfig
    public Object getExtra(String str) {
        Map<String, Object> map = this.no;
        if (map != null) {
            return map.get(str);
        }
        return null;
    }

    @Override // com.bytedance.sdk.openadsdk.AdConfig
    public Map<String, Object> getInitExtra() {
        return this.no;
    }

    @Override // com.bytedance.sdk.openadsdk.AdConfig
    public String getKeywords() {
        return this.p;
    }

    @Override // com.bytedance.sdk.openadsdk.AdConfig
    public IMediationConfig getMediationConfig() {
        return this.fw;
    }

    @Override // com.bytedance.sdk.openadsdk.AdConfig
    public int getPluginUpdateConfig() {
        return this.q;
    }

    @Override // com.bytedance.sdk.openadsdk.AdConfig
    public int getThemeStatus() {
        return this.mp;
    }

    @Override // com.bytedance.sdk.openadsdk.AdConfig
    public int getTitleBarTheme() {
        return this.iw;
    }

    @Override // com.bytedance.sdk.openadsdk.AdConfig
    public boolean isAllowShowNotify() {
        return this.mn;
    }

    @Override // com.bytedance.sdk.openadsdk.AdConfig
    public boolean isDebug() {
        return this.ia;
    }

    @Override // com.bytedance.sdk.openadsdk.AdConfig
    public boolean isPaid() {
        return this.ox;
    }

    @Override // com.bytedance.sdk.openadsdk.AdConfig
    public boolean isSupportMultiProcess() {
        return this.o;
    }

    @Override // com.bytedance.sdk.openadsdk.AdConfig
    public boolean isUseMediation() {
        return this.f2385f;
    }

    public void setAgeGroup(int i) {
        this.jy = i;
    }

    public void setAllowShowNotify(boolean z) {
        this.mn = z;
    }

    public void setAppId(String str) {
        this.dq = str;
    }

    public void setAppName(String str) {
        this.f2384d = str;
    }

    public void setCustomController(TTCustomController tTCustomController) {
        this.ig = tTCustomController;
    }

    public void setData(String str) {
        this.s = str;
    }

    public void setDebug(boolean z) {
        this.ia = z;
    }

    public void setDirectDownloadNetworkType(int... iArr) {
        this.kk = iArr;
    }

    public void setKeywords(String str) {
        this.p = str;
    }

    public void setPaid(boolean z) {
        this.ox = z;
    }

    public void setSupportMultiProcess(boolean z) {
        this.o = z;
    }

    public void setThemeStatus(int i) {
        this.mp = i;
    }

    public void setTitleBarTheme(int i) {
        this.iw = i;
    }
}
