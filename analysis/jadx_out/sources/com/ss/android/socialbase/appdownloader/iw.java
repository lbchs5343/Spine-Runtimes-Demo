package com.ss.android.socialbase.appdownloader;

import android.app.Activity;
import android.content.Context;
import com.ss.android.socialbase.downloader.constants.EnqueueType;
import com.ss.android.socialbase.downloader.depend.IDownloadFileUriProvider;
import com.ss.android.socialbase.downloader.depend.IDownloadListener;
import com.ss.android.socialbase.downloader.depend.cd;
import com.ss.android.socialbase.downloader.depend.mp;
import com.ss.android.socialbase.downloader.depend.op;
import com.ss.android.socialbase.downloader.depend.q;
import com.ss.android.socialbase.downloader.depend.wp;
import com.ss.android.socialbase.downloader.downloader.gh;
import java.util.ArrayList;
import java.util.List;
import org.json.JSONObject;

/* loaded from: classes.dex */
public class iw {
    private int bl;
    private boolean by;

    /* renamed from: c, reason: collision with root package name */
    private boolean f9277c;
    private com.ss.android.socialbase.downloader.downloader.mn cd;
    private boolean ce;
    private int cv;

    /* renamed from: d, reason: collision with root package name */
    private Context f9278d;
    private boolean dc;
    private Activity dq;

    /* renamed from: e, reason: collision with root package name */
    private String f9279e;
    private String fd;
    private boolean fw;
    private com.ss.android.socialbase.downloader.downloader.ia gh;
    private cd gx;
    private boolean h;
    private long ha;
    private com.ss.android.socialbase.downloader.notification.dq i;
    private List<com.ss.android.socialbase.downloader.model.ox> ia;
    private int[] ij;
    private String iw;
    private int j;
    private String jy;
    private boolean k;
    private long kx;
    private com.ss.android.socialbase.appdownloader.ox.s l;
    private boolean le;
    private String mn;
    private IDownloadListener mp;
    private boolean n;
    private q ob;
    private String op;
    private String ox;
    private List<String> p;
    private IDownloadListener q;
    private gh r;
    private String s;
    private IDownloadFileUriProvider t;
    private boolean u;
    private op uh;
    private String v;
    private wp vf;
    private int vw;
    private String wp;
    private String ws;
    private boolean xz;
    private JSONObject yy;
    private boolean kk = true;
    private boolean o = false;
    private boolean no = true;
    private boolean ig = false;

    /* renamed from: f, reason: collision with root package name */
    private String f9280f = "application/vnd.android.package-archive";
    private int ji = 5;
    private boolean ir = true;
    private EnqueueType er = EnqueueType.ENQUEUE_NONE;
    private int wn = 150;
    private boolean nh = true;
    private List<mp> ds = new ArrayList();
    private boolean jw = true;
    private boolean bu = true;

    public iw(Context context, String str) {
        this.f9278d = context.getApplicationContext();
        this.ox = str;
    }

    public gh bl() {
        return this.r;
    }

    public JSONObject bu() {
        return this.yy;
    }

    public String by() {
        return this.fd;
    }

    public boolean c() {
        return this.nh;
    }

    public boolean cd() {
        return this.k;
    }

    public boolean ce() {
        return this.by;
    }

    public boolean cv() {
        return this.jw;
    }

    public iw d(int i) {
        this.ji = i;
        return this;
    }

    public iw d(String str) {
        this.iw = str;
        return this;
    }

    public iw d(List<String> list) {
        this.p = list;
        return this;
    }

    public iw d(boolean z) {
        this.o = z;
        return this;
    }

    public String d() {
        return this.s;
    }

    public String dc() {
        return this.v;
    }

    public iw dq(long j) {
        this.kx = j;
        return this;
    }

    public iw dq(EnqueueType enqueueType) {
        this.er = enqueueType;
        return this;
    }

    public iw dq(IDownloadFileUriProvider iDownloadFileUriProvider) {
        this.t = iDownloadFileUriProvider;
        return this;
    }

    public iw dq(IDownloadListener iDownloadListener) {
        this.mp = iDownloadListener;
        return this;
    }

    public iw dq(cd cdVar) {
        this.gx = cdVar;
        return this;
    }

    public iw dq(mp mpVar) {
        synchronized (this.ds) {
            if (mpVar != null) {
                try {
                    if (!this.ds.contains(mpVar)) {
                        this.ds.add(mpVar);
                        return this;
                    }
                } finally {
                }
            }
            return this;
        }
    }

    public iw dq(String str) {
        this.s = str;
        return this;
    }

    public iw dq(List<com.ss.android.socialbase.downloader.model.ox> list) {
        this.ia = list;
        return this;
    }

    public iw dq(JSONObject jSONObject) {
        this.yy = jSONObject;
        return this;
    }

    public iw dq(boolean z) {
        this.kk = z;
        return this;
    }

    public String dq() {
        return this.ox;
    }

    public void dq(int i) {
        this.cv = i;
    }

    public String ds() {
        return this.ws;
    }

    public boolean e() {
        return this.n;
    }

    public EnqueueType er() {
        return this.er;
    }

    public iw f(boolean z) {
        this.jw = z;
        return this;
    }

    public com.ss.android.socialbase.downloader.downloader.mn f() {
        return this.cd;
    }

    public cd fd() {
        return this.gx;
    }

    public boolean fw() {
        return this.le;
    }

    public Activity getActivity() {
        return this.dq;
    }

    public Context getContext() {
        return this.f9278d;
    }

    public int gh() {
        return this.cv;
    }

    public List<mp> gx() {
        return this.ds;
    }

    public boolean h() {
        return this.ir;
    }

    public boolean ha() {
        return this.dc;
    }

    public String i() {
        return this.f9279e;
    }

    public iw ia(String str) {
        this.f9279e = str;
        return this;
    }

    public iw ia(boolean z) {
        this.by = z;
        return this;
    }

    public boolean ia() {
        return this.ig;
    }

    public iw ig(boolean z) {
        this.ce = z;
        return this;
    }

    public String ig() {
        return this.f9280f;
    }

    public boolean ir() {
        return this.f9277c;
    }

    public iw iw(int i) {
        this.vw = i;
        return this;
    }

    public iw iw(String str) {
        this.f9280f = str;
        return this;
    }

    public iw iw(boolean z) {
        this.k = z;
        return this;
    }

    public boolean iw() {
        return this.o;
    }

    public String j() {
        return this.iw;
    }

    public boolean ji() {
        return this.u;
    }

    public List<String> jw() {
        return this.p;
    }

    public iw jy(boolean z) {
        this.dc = z;
        return this;
    }

    public com.ss.android.socialbase.downloader.downloader.ia jy() {
        return this.gh;
    }

    public int k() {
        return this.ji;
    }

    public iw kk(String str) {
        this.op = str;
        return this;
    }

    public iw kk(boolean z) {
        this.ir = z;
        return this;
    }

    public IDownloadListener kk() {
        return this.mp;
    }

    public String kx() {
        return this.op;
    }

    public IDownloadFileUriProvider l() {
        return this.t;
    }

    public long le() {
        return this.kx;
    }

    public iw mn(String str) {
        this.wp = str;
        return this;
    }

    public iw mn(boolean z) {
        this.n = z;
        return this;
    }

    public boolean mn() {
        return this.no;
    }

    public iw mp(boolean z) {
        this.nh = z;
        return this;
    }

    public boolean mp() {
        return this.fw;
    }

    public int n() {
        return this.wn;
    }

    public wp nh() {
        return this.vf;
    }

    public iw no(String str) {
        this.v = str;
        return this;
    }

    public iw no(boolean z) {
        this.f9277c = z;
        return this;
    }

    public String no() {
        return this.jy;
    }

    public iw o(String str) {
        this.ws = str;
        return this;
    }

    public iw o(boolean z) {
        this.u = z;
        return this;
    }

    public IDownloadListener o() {
        return this.q;
    }

    public com.ss.android.socialbase.appdownloader.ox.s ob() {
        return this.l;
    }

    public int op() {
        return this.j;
    }

    public iw ox(int i) {
        this.bl = i;
        return this;
    }

    public iw ox(String str) {
        this.mn = str;
        return this;
    }

    public iw ox(boolean z) {
        this.ig = z;
        return this;
    }

    public String ox() {
        return this.mn;
    }

    public iw p(int i) {
        this.wn = i;
        return this;
    }

    public iw p(String str) {
        this.fd = str;
        return this;
    }

    public iw p(boolean z) {
        this.fw = z;
        return this;
    }

    public List<com.ss.android.socialbase.downloader.model.ox> p() {
        return this.ia;
    }

    public iw q(boolean z) {
        this.h = z;
        return this;
    }

    public com.ss.android.socialbase.downloader.notification.dq q() {
        return this.i;
    }

    public String r() {
        return this.wp;
    }

    public iw s(int i) {
        this.j = i;
        return this;
    }

    public iw s(String str) {
        this.jy = str;
        return this;
    }

    public iw s(boolean z) {
        this.le = z;
        return this;
    }

    public boolean s() {
        return this.kk;
    }

    public op t() {
        return this.uh;
    }

    public boolean u() {
        return this.ce;
    }

    public boolean uh() {
        return this.xz;
    }

    public boolean v() {
        return this.bu;
    }

    public q vf() {
        return this.ob;
    }

    public int[] vw() {
        return this.ij;
    }

    public boolean wn() {
        return this.h;
    }

    public int wp() {
        return this.bl;
    }

    public int xz() {
        return this.vw;
    }

    public long yy() {
        return this.ha;
    }
}
