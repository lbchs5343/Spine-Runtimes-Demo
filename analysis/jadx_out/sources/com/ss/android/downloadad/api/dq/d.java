package com.ss.android.downloadad.api.dq;

import com.bytedance.sdk.openadsdk.downloadnew.core.TTDownloadField;
import com.ss.android.download.api.download.DownloadController;
import com.ss.android.download.api.download.DownloadEventConfig;
import com.ss.android.download.api.download.DownloadModel;
import com.ss.android.download.api.model.DeepLink;
import com.ss.android.downloadad.api.constant.AdBaseConstants;
import com.ss.android.downloadad.api.download.AdDownloadController;
import com.ss.android.downloadad.api.download.AdDownloadEventConfig;
import com.ss.android.downloadad.api.download.AdDownloadModel;
import com.ss.android.downloadlib.addownload.no;
import java.util.List;
import java.util.concurrent.atomic.AtomicBoolean;
import org.json.JSONObject;

/* loaded from: classes.dex */
public class d implements dq {
    private long bl;
    private boolean bu;
    private long by;

    /* renamed from: c, reason: collision with root package name */
    private boolean f9119c;
    private String cd;
    private String ce;
    private long cv;

    /* renamed from: d, reason: collision with root package name */
    protected boolean f9120d;
    private transient boolean dc;
    protected boolean dq;
    private boolean ds;

    /* renamed from: e, reason: collision with root package name */
    private boolean f9121e;
    private boolean er;

    /* renamed from: f, reason: collision with root package name */
    private int f9122f;
    private boolean fd;
    private int fw;
    private String gh;

    @AdBaseConstants.FunnelType
    private int gx;
    private int h;
    private boolean ha;
    private boolean i;
    private String ia;
    private String ig;
    private boolean ij;
    private int ir;
    private long iw;
    private boolean j;
    private long ji;
    private boolean jw;
    private int jy;
    private JSONObject k;
    private int kk;
    private int kx;
    private boolean l;
    private long le;
    private long mn;
    private String mp;
    private long n;
    private String nh;
    private String no;
    private String o;
    private boolean ob;
    private int op;
    public final AtomicBoolean ox;
    public final AtomicBoolean p;
    private long pa;
    private int q;
    private String r;
    public final AtomicBoolean s;
    private int t;
    private String u;
    private long uh;
    private String v;
    private String vf;
    private boolean vw;
    private boolean wn;
    private int wp;
    private boolean ws;
    private boolean xi;
    private boolean xz;
    private boolean yy;
    private String z;

    private d() {
        this.kk = 1;
        this.i = true;
        this.f9121e = false;
        this.kx = 0;
        this.h = 0;
        this.f9119c = false;
        this.er = false;
        this.wn = true;
        this.j = true;
        this.dq = true;
        this.f9120d = true;
        this.ox = new AtomicBoolean(false);
        this.p = new AtomicBoolean(false);
        this.s = new AtomicBoolean(false);
        this.gx = 1;
        this.xz = true;
        this.cv = -1L;
    }

    public d(DownloadModel downloadModel, DownloadEventConfig downloadEventConfig, DownloadController downloadController) {
        this(downloadModel, downloadEventConfig, downloadController, 0);
    }

    public d(DownloadModel downloadModel, DownloadEventConfig downloadEventConfig, DownloadController downloadController, int i) {
        this.kk = 1;
        this.i = true;
        this.f9121e = false;
        this.kx = 0;
        this.h = 0;
        this.f9119c = false;
        this.er = false;
        this.wn = true;
        this.j = true;
        this.dq = true;
        this.f9120d = true;
        this.ox = new AtomicBoolean(false);
        this.p = new AtomicBoolean(false);
        this.s = new AtomicBoolean(false);
        this.gx = 1;
        this.xz = true;
        this.cv = -1L;
        this.iw = downloadModel.getId();
        this.mn = downloadModel.getExtraValue();
        this.ia = downloadModel.getLogExtra();
        this.o = downloadModel.getPackageName();
        this.k = downloadModel.getExtra();
        this.i = downloadModel.isAd();
        this.fw = downloadModel.getVersionCode();
        this.cd = downloadModel.getVersionName();
        this.no = downloadModel.getDownloadUrl();
        if (downloadModel.getDeepLink() != null) {
            this.ig = downloadModel.getDeepLink().getOpenUrl();
            this.mp = downloadModel.getDeepLink().getWebUrl();
        }
        this.q = downloadModel.getModelType();
        this.gh = downloadModel.getName();
        this.r = downloadModel.getAppIcon();
        this.ce = downloadModel.getMimeType();
        this.nh = downloadEventConfig.getClickButtonTag();
        this.vf = downloadEventConfig.getRefer();
        this.ob = downloadEventConfig.isEnableV3Event();
        this.f9121e = downloadController.isEnableBackDialog();
        this.jy = downloadController.getLinkMode();
        this.f9122f = downloadController.getDownloadMode();
        this.xz = downloadController.enableShowComplianceDialog();
        this.yy = downloadController.isAutoDownloadOnCardShow();
        this.wn = downloadController.enableNewActivity();
        this.dq = downloadController.enableAH();
        this.f9120d = downloadController.enableAM();
        this.wp = i;
        long currentTimeMillis = System.currentTimeMillis();
        this.le = currentTimeMillis;
        this.ji = currentTimeMillis;
        this.er = downloadModel.shouldDownloadWithPatchApply();
        if (downloadModel instanceof AdDownloadModel) {
            this.z = ((AdDownloadModel) downloadModel).getTaskKey();
        }
    }

    public static d d(JSONObject jSONObject) {
        if (jSONObject == null) {
            return null;
        }
        d dVar = new d();
        try {
            dVar.p(com.ss.android.download.api.ox.d.dq(jSONObject, "mId"));
            dVar.s(com.ss.android.download.api.ox.d.dq(jSONObject, "mExtValue"));
            dVar.ox(jSONObject.optString("mLogExtra"));
            dVar.s(jSONObject.optInt("mDownloadStatus"));
            dVar.d(jSONObject.optString("mPackageName"));
            boolean z = true;
            dVar.dq(jSONObject.optBoolean("mIsAd", true));
            dVar.iw(com.ss.android.download.api.ox.d.dq(jSONObject, "mTimeStamp"));
            dVar.iw(jSONObject.optInt("mVersionCode"));
            dVar.p(jSONObject.optString("mVersionName"));
            dVar.mn(jSONObject.optInt("mDownloadId"));
            dVar.d(jSONObject.optBoolean("mIsV3Event"));
            dVar.ia(jSONObject.optInt("mScene"));
            dVar.iw(jSONObject.optString("mEventTag"));
            dVar.mn(jSONObject.optString("mEventRefer"));
            dVar.ia(jSONObject.optString("mDownloadUrl"));
            dVar.ox(jSONObject.optBoolean("mEnableBackDialog"));
            dVar.ox.set(jSONObject.optBoolean("hasSendInstallFinish"));
            dVar.p.set(jSONObject.optBoolean("hasSendDownloadFailedFinally"));
            dVar.s.set(jSONObject.optBoolean("hasDoRebootMarketInstallFinishCheck"));
            dVar.p(jSONObject.optInt("mLastFailedErrCode"));
            dVar.dq(jSONObject.optString("mLastFailedErrMsg"));
            dVar.kk(jSONObject.optString("mOpenUrl"));
            dVar.o(jSONObject.optInt("mLinkMode"));
            dVar.no(jSONObject.optInt("mDownloadMode"));
            dVar.ig(jSONObject.optInt("mModelType"));
            dVar.o(jSONObject.optString("mAppName"));
            dVar.no(jSONObject.optString("mAppIcon"));
            dVar.dq(jSONObject.optInt("mDownloadFailedTimes", 0));
            dVar.dq(com.ss.android.download.api.ox.d.dq(jSONObject, "mRecentDownloadResumeTime"));
            dVar.d(jSONObject.optInt("mClickPauseTimes"));
            dVar.d(com.ss.android.download.api.ox.d.dq(jSONObject, "mJumpInstallTime"));
            dVar.ox(com.ss.android.download.api.ox.d.dq(jSONObject, "mCancelInstallTime"));
            dVar.ox(jSONObject.optInt("mLastFailedResumeCount"));
            dVar.ig(jSONObject.optString("downloadFinishReason"));
            dVar.kk(jSONObject.optLong("clickDownloadSize"));
            dVar.ia(jSONObject.optLong("clickDownloadTime"));
            dVar.ia(jSONObject.optBoolean("mIsUpdateDownload"));
            dVar.mp(jSONObject.optString("mOriginMimeType"));
            dVar.kk(jSONObject.optBoolean("mIsPatchApplyHandled"));
            dVar.iw(jSONObject.optBoolean("installAfterCleanSpace"));
            dVar.kk(jSONObject.optInt(TTDownloadField.TT_FUNNEL_TYPE, 1));
            dVar.s(jSONObject.optString(TTDownloadField.TT_WEB_URL));
            dVar.f(jSONObject.optBoolean(TTDownloadField.TT_ENABLE_SHOW_COMPLIANCE_DIALOG, true));
            dVar.fw(jSONObject.optBoolean(TTDownloadField.TT_IS_AUTO_DOWNLOAD_ON_CARD_SHOW));
            dVar.cd(jSONObject.optInt("enable_new_activity", 1) == 1);
            dVar.gh(jSONObject.optInt("enable_pause", 1) == 1);
            dVar.r(jSONObject.optInt("enable_ah", 1) == 1);
            if (jSONObject.optInt("enable_am", 1) != 1) {
                z = false;
            }
            dVar.i(z);
            dVar.dq(jSONObject.optJSONObject("mExtras"));
            dVar.le(jSONObject.optBoolean("intent_jump_browser_success"));
            dVar.q(jSONObject.optString("task_key"));
            dVar.o(jSONObject.optLong("market_install_finish_check_start_timestamp"));
            return dVar;
        } catch (Exception e2) {
            no.r().dq(e2, "NativeDownloadModel fromJson");
            return dVar;
        }
    }

    public long bl() {
        return this.bl;
    }

    public boolean bu() {
        return this.xi;
    }

    public boolean by() {
        return this.ha;
    }

    public long c() {
        return this.le;
    }

    @Override // com.ss.android.downloadad.api.dq.dq
    public JSONObject cd() {
        return null;
    }

    public void cd(boolean z) {
        this.wn = z;
    }

    public int ce() {
        return this.fw;
    }

    public boolean cv() {
        return this.bu;
    }

    @Override // com.ss.android.downloadad.api.dq.dq
    public long d() {
        return this.iw;
    }

    public void d(int i) {
        this.h = i;
    }

    public void d(long j) {
        this.bl = j;
    }

    public void d(String str) {
        this.o = str;
    }

    public void d(boolean z) {
        this.ob = z;
    }

    public boolean dc() {
        return this.fd;
    }

    @Override // com.ss.android.downloadad.api.dq.dq
    public String dq() {
        return this.no;
    }

    public void dq(int i) {
        this.kx = i;
    }

    public void dq(long j) {
        this.ji = j;
    }

    public void dq(String str) {
        this.u = str;
    }

    public void dq(JSONObject jSONObject) {
        this.k = jSONObject;
    }

    public void dq(boolean z) {
        this.i = z;
    }

    public boolean ds() {
        return this.er;
    }

    public synchronized void e() {
        this.kx++;
    }

    public String er() {
        return this.cd;
    }

    @Override // com.ss.android.downloadad.api.dq.dq
    public JSONObject f() {
        return null;
    }

    public void f(boolean z) {
        this.xz = z;
    }

    public boolean fd() {
        return this.ij;
    }

    public void fw(boolean z) {
        this.yy = z;
    }

    @Override // com.ss.android.downloadad.api.dq.dq
    public boolean fw() {
        return this.wn;
    }

    @Override // com.ss.android.downloadad.api.dq.dq
    public int gh() {
        return this.wp;
    }

    public void gh(boolean z) {
        this.j = z;
    }

    public boolean gx() {
        return this.l;
    }

    public synchronized void h() {
        this.h++;
    }

    public boolean ha() {
        return this.jw;
    }

    @Override // com.ss.android.downloadad.api.dq.dq
    public DownloadModel i() {
        return z();
    }

    public void i(boolean z) {
        this.f9120d = z;
    }

    @Override // com.ss.android.downloadad.api.dq.dq
    public int ia() {
        return this.gx;
    }

    public void ia(int i) {
        this.t = i;
    }

    public void ia(long j) {
        this.by = j;
    }

    public void ia(String str) {
        this.no = str;
    }

    public void ia(boolean z) {
        this.f9119c = z;
    }

    @Override // com.ss.android.downloadad.api.dq.dq
    public long ig() {
        return this.mn;
    }

    public void ig(int i) {
        this.q = i;
    }

    public void ig(String str) {
        this.v = str;
    }

    public void ig(boolean z) {
        this.bu = z;
    }

    public long ij() {
        return this.pa;
    }

    public AdDownloadController io() {
        return new AdDownloadController.Builder().setIsEnableBackDialog(this.f9121e).setLinkMode(this.jy).setDownloadMode(this.f9122f).setEnableShowComplianceDialog(this.xz).setEnableAH(this.dq).setEnableAM(this.f9120d).build();
    }

    public String ir() {
        return this.u;
    }

    @Override // com.ss.android.downloadad.api.dq.dq
    public String iw() {
        return this.ig;
    }

    public void iw(int i) {
        this.fw = i;
    }

    public void iw(long j) {
        if (j > 0) {
            this.le = j;
        }
    }

    public void iw(String str) {
        this.nh = str;
    }

    public void iw(boolean z) {
        this.l = z;
    }

    public boolean j() {
        return this.f9121e;
    }

    public long ji() {
        long j = this.ji;
        return j == 0 ? this.le : j;
    }

    public boolean jw() {
        return this.ws;
    }

    @Override // com.ss.android.downloadad.api.dq.dq
    public Object jy() {
        return null;
    }

    public void jy(boolean z) {
        this.ij = z;
    }

    @Override // com.ss.android.downloadad.api.dq.dq
    public DownloadController k() {
        return io();
    }

    @Override // com.ss.android.downloadad.api.dq.dq
    public String kk() {
        return this.vf;
    }

    public void kk(int i) {
        this.gx = i;
    }

    public void kk(long j) {
        this.uh = j;
    }

    public void kk(String str) {
        this.ig = str;
    }

    public void kk(boolean z) {
        this.er = z;
    }

    public int kx() {
        return this.h;
    }

    public String l() {
        return this.v;
    }

    @Override // com.ss.android.downloadad.api.dq.dq
    public DownloadEventConfig le() {
        return pa();
    }

    public void le(boolean z) {
        this.xi = z;
    }

    @Override // com.ss.android.downloadad.api.dq.dq
    public JSONObject mn() {
        return this.k;
    }

    public void mn(int i) {
        this.wp = i;
    }

    public void mn(long j) {
        this.cv = j;
    }

    public void mn(String str) {
        this.vf = str;
    }

    public void mn(boolean z) {
        this.ha = z;
    }

    public void mp(String str) {
        this.ce = str;
    }

    public void mp(boolean z) {
        this.fd = z;
    }

    @Override // com.ss.android.downloadad.api.dq.dq
    public boolean mp() {
        return this.ob;
    }

    public int n() {
        return this.op;
    }

    public long nh() {
        return this.cv;
    }

    @Override // com.ss.android.downloadad.api.dq.dq
    public JSONObject no() {
        return null;
    }

    public void no(int i) {
        this.f9122f = i;
    }

    public void no(String str) {
        this.r = str;
    }

    public void no(boolean z) {
        this.jw = z;
    }

    @Override // com.ss.android.downloadad.api.dq.dq
    public String o() {
        return this.nh;
    }

    public void o(int i) {
        this.jy = i;
    }

    public void o(long j) {
        this.pa = j;
    }

    public void o(String str) {
        this.gh = str;
    }

    public void o(boolean z) {
        this.dc = z;
    }

    public int ob() {
        return this.jy;
    }

    public int op() {
        return this.ir;
    }

    public void ox(int i) {
        this.op = i;
    }

    public void ox(long j) {
        this.n = j;
    }

    public void ox(String str) {
        this.ia = str;
    }

    public void ox(boolean z) {
        this.f9121e = z;
    }

    @Override // com.ss.android.downloadad.api.dq.dq
    public boolean ox() {
        return this.i;
    }

    @Override // com.ss.android.downloadad.api.dq.dq
    public String p() {
        return this.ia;
    }

    public void p(int i) {
        this.ir = i;
    }

    public void p(long j) {
        this.iw = j;
    }

    public void p(String str) {
        this.cd = str;
    }

    public void p(boolean z) {
        this.ds = z;
    }

    public AdDownloadEventConfig pa() {
        return new AdDownloadEventConfig.Builder().setClickButtonTag(this.nh).setRefer(this.vf).setIsEnableV3Event(this.ob).build();
    }

    @Override // com.ss.android.downloadad.api.dq.dq
    public List<String> q() {
        return null;
    }

    public void q(String str) {
        this.z = str;
    }

    public void q(boolean z) {
        this.ws = z;
    }

    @Override // com.ss.android.downloadad.api.dq.dq
    public int r() {
        return -1;
    }

    public void r(boolean z) {
        this.dq = z;
    }

    @Override // com.ss.android.downloadad.api.dq.dq
    public String s() {
        return this.o;
    }

    public void s(int i) {
        this.kk = i;
    }

    public void s(long j) {
        this.mn = j;
    }

    public void s(String str) {
        this.mp = str;
    }

    public void s(boolean z) {
        this.vw = z;
    }

    public boolean t() {
        return this.vw;
    }

    public int u() {
        return this.kk;
    }

    public long uh() {
        return this.by;
    }

    public String v() {
        return this.ce;
    }

    public String vf() {
        return this.gh;
    }

    public boolean vw() {
        return this.dc;
    }

    public int wn() {
        return this.t;
    }

    public int wp() {
        return this.kx;
    }

    public String ws() {
        return this.z;
    }

    public JSONObject xi() {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("mId", this.iw);
            jSONObject.put("mExtValue", this.mn);
            jSONObject.put("mLogExtra", this.ia);
            jSONObject.put("mDownloadStatus", this.kk);
            jSONObject.put("mPackageName", this.o);
            jSONObject.put("mIsAd", this.i);
            jSONObject.put("mTimeStamp", this.le);
            jSONObject.put("mExtras", this.k);
            jSONObject.put("mVersionCode", this.fw);
            jSONObject.put("mVersionName", this.cd);
            jSONObject.put("mDownloadId", this.wp);
            jSONObject.put("mIsV3Event", this.ob);
            jSONObject.put("mScene", this.t);
            jSONObject.put("mEventTag", this.nh);
            jSONObject.put("mEventRefer", this.vf);
            jSONObject.put("mDownloadUrl", this.no);
            jSONObject.put("mEnableBackDialog", this.f9121e);
            jSONObject.put("hasSendInstallFinish", this.ox.get());
            jSONObject.put("hasSendDownloadFailedFinally", this.p.get());
            jSONObject.put("hasDoRebootMarketInstallFinishCheck", this.s.get());
            jSONObject.put("mLastFailedErrCode", this.ir);
            jSONObject.put("mLastFailedErrMsg", this.u);
            jSONObject.put("mOpenUrl", this.ig);
            jSONObject.put("mLinkMode", this.jy);
            jSONObject.put("mDownloadMode", this.f9122f);
            jSONObject.put("mModelType", this.q);
            jSONObject.put("mAppName", this.gh);
            jSONObject.put("mAppIcon", this.r);
            jSONObject.put("mDownloadFailedTimes", this.kx);
            long j = this.ji;
            if (j == 0) {
                j = this.le;
            }
            jSONObject.put("mRecentDownloadResumeTime", j);
            jSONObject.put("mClickPauseTimes", this.h);
            jSONObject.put("mJumpInstallTime", this.bl);
            jSONObject.put("mCancelInstallTime", this.n);
            jSONObject.put("mLastFailedResumeCount", this.op);
            jSONObject.put("mIsUpdateDownload", this.f9119c);
            jSONObject.put("mOriginMimeType", this.ce);
            jSONObject.put("mIsPatchApplyHandled", this.er);
            jSONObject.put("downloadFinishReason", this.v);
            jSONObject.put("clickDownloadTime", this.by);
            jSONObject.put("clickDownloadSize", this.uh);
            jSONObject.put("installAfterCleanSpace", this.l);
            jSONObject.put(TTDownloadField.TT_FUNNEL_TYPE, this.gx);
            jSONObject.put(TTDownloadField.TT_WEB_URL, this.mp);
            jSONObject.put(TTDownloadField.TT_ENABLE_SHOW_COMPLIANCE_DIALOG, this.xz);
            jSONObject.put(TTDownloadField.TT_IS_AUTO_DOWNLOAD_ON_CARD_SHOW, this.yy);
            jSONObject.put("enable_new_activity", this.wn ? 1 : 0);
            jSONObject.put("enable_pause", this.j ? 1 : 0);
            jSONObject.put("enable_ah", this.dq ? 1 : 0);
            jSONObject.put("enable_am", this.f9120d ? 1 : 0);
            jSONObject.putOpt("intent_jump_browser_success", Boolean.valueOf(this.xi));
            jSONObject.put("task_key", this.z);
            jSONObject.putOpt("market_install_finish_check_start_timestamp", Long.valueOf(this.pa));
            return jSONObject;
        } catch (Exception e2) {
            no.r().dq(e2, "NativeDownloadModel toJson");
            return jSONObject;
        }
    }

    public long xz() {
        return this.uh;
    }

    public boolean yy() {
        return this.f9119c;
    }

    public AdDownloadModel z() {
        return new AdDownloadModel.Builder().setAdId(this.iw).setExtraValue(this.mn).setLogExtra(this.ia).setPackageName(this.o).setExtra(this.k).setIsAd(this.i).setVersionCode(this.fw).setVersionName(this.cd).setDownloadUrl(this.no).setModelType(this.q).setMimeType(this.ce).setAppName(this.gh).setAppIcon(this.r).setTaskKey(this.z).setDeepLink(new DeepLink(this.ig, this.mp, null)).build();
    }
}
