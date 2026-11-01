package com.bytedance.sdk.openadsdk.core.o.ox;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.Looper;
import android.os.Message;
import android.os.RemoteException;
import android.text.TextUtils;
import android.widget.Toast;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import com.bykv.vk.openvk.api.proto.Bridge;
import com.bytedance.sdk.component.utils.e;
import com.bytedance.sdk.openadsdk.core.activity.base.TTMiddlePageActivity;
import com.bytedance.sdk.openadsdk.core.d.dq.d.o;
import com.bytedance.sdk.openadsdk.core.d.dq.d.p;
import com.bytedance.sdk.openadsdk.core.fw;
import com.bytedance.sdk.openadsdk.core.ir.c;
import com.bytedance.sdk.openadsdk.core.ir.op;
import com.bytedance.sdk.openadsdk.core.r;
import com.bytedance.sdk.openadsdk.core.r.j;
import com.bytedance.sdk.openadsdk.core.wn;
import com.bytedance.sdk.openadsdk.core.wp;
import com.bytedance.sdk.openadsdk.downloadnew.core.ITTDownloadAdapter;
import com.bytedance.sdk.openadsdk.downloadnew.core.TTDownloadField;
import g.hat;
import java.lang.ref.WeakReference;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.concurrent.CopyOnWriteArrayList;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;
import org.json.JSONObject;

/* loaded from: classes3.dex */
public abstract class ia extends s implements e.dq {

    /* renamed from: e, reason: collision with root package name */
    protected volatile boolean f3293e;
    protected fw gh;
    protected volatile com.bytedance.sdk.openadsdk.core.o.ox.ox.ox i;
    protected com.bytedance.sdk.openadsdk.core.o.d.s ig;
    protected String iw;
    protected final String jy;
    protected boolean kx;
    protected volatile Runnable le;
    protected HashSet<Integer> no;
    protected WeakReference<Context> ox;
    protected final com.bytedance.sdk.openadsdk.core.r.p p;
    protected j s;
    protected Bridge wp;
    protected final AtomicInteger mn = new AtomicInteger(1);
    protected final AtomicBoolean ia = new AtomicBoolean(false);
    protected boolean kk = false;
    protected final AtomicBoolean o = new AtomicBoolean(false);
    protected final e mp = new e(Looper.getMainLooper(), this);
    protected boolean q = true;

    /* renamed from: f, reason: collision with root package name */
    protected boolean f3294f = false;
    protected volatile boolean fw = false;
    protected volatile boolean cd = false;
    protected dq r = new dq();
    protected int k = 0;
    private List<r> h = new CopyOnWriteArrayList();

    public class dq extends com.bytedance.sdk.component.o.kk {

        /* renamed from: d, reason: collision with root package name */
        long f3300d;
        String dq;
        long ox;
        String p;
        String s;

        public dq() {
            super("DownloadCallbackRunnable");
        }

        public dq(String str, long j, long j2, String str2, String str3) {
            super("DownloadCallbackRunnable");
            this.dq = str;
            this.f3300d = j;
            this.ox = j2;
            this.p = str2;
            this.s = str3;
        }

        public void d(long j) {
            this.ox = j;
        }

        public void d(String str) {
            this.p = str;
        }

        public void dq(long j) {
            this.f3300d = j;
        }

        public void dq(String str) {
            this.dq = str;
        }

        public void ox(String str) {
            this.s = str;
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                ia.this.ig().dq(ia.this.jy, this.dq, this.f3300d, this.ox, this.p, this.s);
            } catch (Throwable unused) {
            }
        }
    }

    public ia(Context context, j jVar, String str, boolean z) {
        this.ox = new WeakReference<>(context);
        this.s = jVar;
        com.bytedance.sdk.openadsdk.core.r.p gm = jVar.gm();
        this.p = gm;
        str = TextUtils.isEmpty(str) ? c.d(jVar) : str;
        this.iw = TextUtils.isEmpty(str) ? "embeded_ad" : str;
        this.jy = jVar.hashCode() + jVar.el();
        this.wp = com.bytedance.sdk.openadsdk.core.no.ia().h();
        this.i = new com.bytedance.sdk.openadsdk.core.o.ox.ox.ox(getContext(), this.s);
        if (gm == null) {
            return;
        }
        if (wp.getContext() == null) {
            wp.dq(context);
        }
        this.ig = new com.bytedance.sdk.openadsdk.core.o.d.s();
        s(z);
    }

    private void cd() {
        if (this.f3294f) {
            return;
        }
        this.f3294f = true;
        dq(4, new ITTDownloadAdapter.OnEventLogHandler() { // from class: com.bytedance.sdk.openadsdk.core.o.ox.ia.7
            @Override // com.bytedance.sdk.openadsdk.downloadnew.core.ITTDownloadAdapter.OnEventLogHandler
            public boolean onEventLog(int i, String str, String str2, String str3, Object obj) {
                if (i != 4) {
                    return true;
                }
                if ("market_click_open".equals(str3) || "applink_click".equals(str3)) {
                    com.bytedance.sdk.openadsdk.core.ox.dq().dq("save_jump_success_time", System.currentTimeMillis());
                    com.bytedance.sdk.openadsdk.core.ox.dq().dq("save_jump_success_ad_tag", str2);
                    com.bytedance.sdk.openadsdk.core.ox.dq().dq("save_dpl_success_materialmeta", str);
                }
                return true;
            }
        });
    }

    private void d(Activity activity) {
        com.bytedance.sdk.openadsdk.core.ir.dq p = com.bytedance.sdk.openadsdk.core.no.ia().p();
        if (p != null && this.le == null) {
            this.le = new Runnable() { // from class: com.bytedance.sdk.openadsdk.core.o.ox.ia.1
                @Override // java.lang.Runnable
                public void run() {
                    ia.this.fw();
                    ia.this.le = null;
                }
            };
            p.dq(activity, this.le);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void fw() {
        if (com.bytedance.sdk.openadsdk.core.multipro.d.ox()) {
            com.bytedance.sdk.component.o.mn.ox().execute(new Runnable() { // from class: com.bytedance.sdk.openadsdk.core.o.ox.ia.2
                @Override // java.lang.Runnable
                public void run() {
                    fw dq2 = fw.dq.dq(com.bytedance.sdk.openadsdk.core.multipro.aidl.dq.dq(wp.getContext()).dq(3));
                    try {
                        synchronized (ia.this.h) {
                            if (dq2 != null) {
                                try {
                                    if (ia.this.h.size() > 0) {
                                        Iterator it = ia.this.h.iterator();
                                        while (it.hasNext()) {
                                            dq2.d(ia.this.jy, (r) it.next());
                                        }
                                        ia.this.h.clear();
                                    }
                                } catch (Throwable th) {
                                    throw th;
                                }
                            }
                        }
                    } catch (RemoteException e2) {
                        e2.printStackTrace();
                    }
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void ia(final JSONObject jSONObject, final boolean z) {
        com.bytedance.sdk.openadsdk.core.live.d dq2 = com.bytedance.sdk.openadsdk.core.live.d.dq();
        HashMap hashMap = new HashMap(1);
        hashMap.put("event_tag", this.iw);
        if ((dq2.dq(getContext(), this.s, hashMap) & MediaPlayer.MEDIA_PLAYER_OPTION_VOICE_STREAM_TYPE) == 0) {
            com.bytedance.sdk.openadsdk.core.ox.dq().dq("save_jump_success_time", System.currentTimeMillis());
            com.bytedance.sdk.openadsdk.core.ox.dq().dq("save_jump_success_ad_tag", this.iw);
            com.bytedance.sdk.openadsdk.core.ox.dq().dq("save_dpl_success_materialmeta", this.s.ve().toString());
            return;
        }
        no().dq(f(), this.s);
        if (!"feed_video_middle_page".equals(this.iw)) {
            TTMiddlePageActivity.d(getContext(), this.s);
        }
        boolean dq3 = com.bytedance.sdk.openadsdk.core.d.dq.d.o.dq();
        if (dq3) {
            com.bytedance.sdk.openadsdk.core.d.dq.d.o.dq(false);
        }
        if (dq3) {
            s(jSONObject, z);
        } else {
            if (new com.bytedance.sdk.openadsdk.core.d.dq.d.o(this.s, getContext()).dq(this.iw).d(this.fw).dq(new o.dq() { // from class: com.bytedance.sdk.openadsdk.core.o.ox.ia.9
                @Override // com.bytedance.sdk.openadsdk.core.d.dq.d.o.dq
                public void d() {
                    ia.this.s(jSONObject, z);
                }

                @Override // com.bytedance.sdk.openadsdk.core.d.dq.d.o.dq
                public void dq() {
                    com.bytedance.sdk.openadsdk.core.ox.dq().dq("save_jump_success_time", System.currentTimeMillis());
                    com.bytedance.sdk.openadsdk.core.ox.dq().dq("save_jump_success_ad_tag", ia.this.iw);
                    com.bytedance.sdk.openadsdk.core.ox.dq().dq("save_dpl_success_materialmeta", ia.this.s.ve().toString());
                }
            })) {
                return;
            }
            s(jSONObject, z);
        }
    }

    private void iw(JSONObject jSONObject, boolean z) {
        d(jSONObject, z);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void mn(final JSONObject jSONObject, final boolean z) {
        int dq2 = com.bytedance.sdk.openadsdk.core.live.d.dq().dq(this.s, new com.bytedance.sdk.openadsdk.core.live.dq.ox() { // from class: com.bytedance.sdk.openadsdk.core.o.ox.ia.8
            @Override // com.bytedance.sdk.openadsdk.core.live.dq.ox
            public void dq() {
            }

            @Override // com.bytedance.sdk.openadsdk.core.live.dq.ox
            public void dq(int i) {
                ia.this.ia(jSONObject, z);
            }
        }, this.iw);
        if (dq2 == 1 || dq2 == 2) {
            return;
        }
        ia(jSONObject, z);
    }

    public abstract void d();

    public void d(final com.bytedance.sdk.openadsdk.core.o.d.dq dqVar) {
        if (!com.bytedance.sdk.openadsdk.core.multipro.d.ox() || dqVar == null) {
            return;
        }
        com.bytedance.sdk.component.o.mn.ox().execute(new Runnable() { // from class: com.bytedance.sdk.openadsdk.core.o.ox.ia.3
            @Override // java.lang.Runnable
            public void run() {
                com.bytedance.sdk.openadsdk.core.multipro.aidl.dq dq2 = com.bytedance.sdk.openadsdk.core.multipro.aidl.dq.dq(wp.getContext());
                com.bytedance.sdk.openadsdk.core.multipro.aidl.d.iw iwVar = new com.bytedance.sdk.openadsdk.core.multipro.aidl.d.iw(dqVar);
                fw dq3 = fw.dq.dq(dq2.dq(3));
                if (dq3 != null) {
                    try {
                        dq3.dq(ia.this.jy, iwVar);
                        synchronized (ia.this.h) {
                            ia.this.h.add(iwVar);
                        }
                    } catch (RemoteException e2) {
                        e2.printStackTrace();
                    }
                }
            }
        });
    }

    public String dq(String str) {
        Uri parse;
        return (TextUtils.isEmpty(str) || (parse = Uri.parse(str)) == null || TextUtils.isEmpty(parse.getScheme())) ? "" : parse.getScheme().toLowerCase(Locale.US);
    }

    @Override // com.bytedance.sdk.openadsdk.core.o.d.ox
    public void dq(int i) {
        this.k = i;
    }

    @Override // com.bytedance.sdk.openadsdk.core.o.d.ox
    public void dq(int i, ITTDownloadAdapter.OnEventLogHandler onEventLogHandler) {
        if (this.no == null) {
            this.no = new HashSet<>();
        }
        this.no.add(Integer.valueOf(i));
        if (this.wp != null) {
            hat f2 = hat.f();
            f2.f19148c.put(0, new op().dq(TTDownloadField.TT_HID, Integer.valueOf(i)).dq(TTDownloadField.TT_ID, Integer.valueOf(i)).dq(TTDownloadField.TT_ONEVENT_LOG_HANDLER, onEventLogHandler).dq(TTDownloadField.TT_HASHCODE, Integer.valueOf(o())));
            this.wp.call(9, f2.k(), Void.class);
        }
    }

    @Override // com.bytedance.sdk.openadsdk.core.o.d.ox
    public void dq(Activity activity) {
        if (activity == null) {
            return;
        }
        this.ox = new WeakReference<>(activity);
        d();
    }

    public void dq(Message message) {
        if (message.what != 9) {
            return;
        }
        if (com.bytedance.sdk.openadsdk.core.no.ia() == null || com.bytedance.sdk.openadsdk.core.no.ia().dq()) {
            mn(true);
            return;
        }
        mn(false);
        if (this.q) {
            Object obj = message.obj;
            ox(c.gh(this.s), obj instanceof Boolean ? ((Boolean) obj).booleanValue() : false);
        }
    }

    @Override // com.bytedance.sdk.openadsdk.core.o.d.ox
    public void dq(com.bytedance.sdk.openadsdk.core.o.d.dq dqVar) {
        dq(dqVar, true);
    }

    @Override // com.bytedance.sdk.openadsdk.core.o.d.ox
    public void dq(com.bytedance.sdk.openadsdk.core.o.d.dq dqVar, boolean z) {
        if (dqVar == null) {
            return;
        }
        com.bytedance.sdk.openadsdk.core.o.d.s sVar = this.ig;
        if (sVar != null) {
            sVar.dq(dqVar);
        }
        if (z) {
            d(dqVar);
        }
        d();
    }

    public void dq(j jVar, String str, String str2) {
        if (dq()) {
            return;
        }
        com.bytedance.sdk.openadsdk.core.ig.ox.p(jVar, str, str2);
    }

    @Override // com.bytedance.sdk.openadsdk.core.o.d.ox
    public void dq(final j jVar, final boolean z) {
        if (getContext() == null) {
            return;
        }
        this.s = jVar;
        cd();
        if (!com.bytedance.sdk.openadsdk.core.d.dq.d.p.dq(this.s, false) || com.bytedance.sdk.openadsdk.core.ugeno.kk.s(this.s) || com.bytedance.sdk.openadsdk.core.ugeno.kk.p(this.s)) {
            mn(c.gh(jVar), z);
        } else {
            new com.bytedance.sdk.openadsdk.core.d.dq.d.p(this.s, getContext()).dq(this.iw).dq(new p.dq() { // from class: com.bytedance.sdk.openadsdk.core.o.ox.ia.6
                @Override // com.bytedance.sdk.openadsdk.core.d.dq.d.p.dq
                public void dq() {
                    ia.this.mn(c.gh(jVar), z);
                }
            });
        }
    }

    public void dq(String str, long j, long j2, String str2, String str3) {
        dq dqVar = this.r;
        if (dqVar == null) {
            this.r = new dq(str, j, j2, str2, str3);
        } else {
            dqVar.dq(str);
            this.r.dq(j);
            this.r.d(j2);
            this.r.d(str2);
            this.r.ox(str3);
        }
        com.bytedance.sdk.component.o.mn.ox().execute(this.r);
    }

    public void dq(Map<String, Object> map) {
        Bridge bridge = this.wp;
        if (bridge != null) {
            hat f2 = hat.f();
            f2.f19148c.put(0, map);
            bridge.call(16, f2.k(), Void.class);
        }
    }

    public abstract void dq(boolean z);

    @Override // com.bytedance.sdk.openadsdk.core.o.d.ox
    public abstract boolean dq();

    public boolean dq(String str, String str2, j jVar) {
        if (this.wp == null) {
            return false;
        }
        op<String, Object> dq2 = new op().dq(TTDownloadField.TT_TAG_INTERCEPT, str).dq(TTDownloadField.TT_LABEL, str2).dq(TTDownloadField.TT_HASHCODE, Integer.valueOf(o())).dq(TTDownloadField.TT_META, jVar.ve().toString());
        Bridge bridge = this.wp;
        hat f2 = hat.f();
        f2.f19148c.put(0, dq2);
        return ((Boolean) bridge.call(2, f2.k(), Boolean.class)).booleanValue();
    }

    @Override // com.bytedance.sdk.openadsdk.core.o.d.ox
    public boolean dq(JSONObject jSONObject, boolean z) {
        if (this.mn.get() == 1) {
            if (com.bytedance.sdk.component.utils.q.ox(getContext()) == 0) {
                try {
                    Toast.makeText(getContext(), com.bytedance.sdk.component.utils.r.dq(getContext(), "tt_no_network"), 0).show();
                } catch (Exception unused) {
                }
            } else {
                if (c.iw(getContext())) {
                    c.dq(this.fw, TTMiddlePageActivity.dq(this.s), this.s, this.iw);
                }
                p(jSONObject, z);
            }
            return true;
        }
        if (c.iw(getContext())) {
            c.dq(this.fw, TTMiddlePageActivity.dq(this.s), this.s, this.iw);
        }
        d(jSONObject, z);
        if (this.mn.get() == 3 || this.mn.get() == 4) {
            this.ia.set(false);
            return false;
        }
        if (this.mn.get() == 6) {
            this.ia.set(true);
        }
        return false;
    }

    @Override // com.bytedance.sdk.openadsdk.core.o.d.ox
    public boolean dq(boolean z, boolean z2) {
        this.q = z;
        return kk(z2);
    }

    public com.bytedance.sdk.openadsdk.core.o.ox.ox.dq f() {
        return dq() ? new com.bytedance.sdk.openadsdk.core.o.ox.ox.s() : this.fw ? new com.bytedance.sdk.openadsdk.core.o.ox.ox.p() : new com.bytedance.sdk.openadsdk.core.o.ox.ox.d();
    }

    public Context getContext() {
        Context context;
        try {
            WeakReference<Context> weakReference = this.ox;
            return (weakReference == null || (context = weakReference.get()) == null) ? wp.getContext() : context;
        } catch (Throwable unused) {
            return wp.getContext();
        }
    }

    @Override // com.bytedance.sdk.openadsdk.core.o.d.ox
    public void ia() {
        if (wp.getContext() == null) {
            wp.dq(getContext());
        }
        d();
    }

    public void ia(boolean z) {
        this.cd = z;
    }

    public fw ig() {
        if (this.gh == null) {
            this.gh = fw.dq.dq(com.bytedance.sdk.openadsdk.core.multipro.aidl.dq.dq(wp.getContext()).dq(3));
        }
        return this.gh;
    }

    public abstract void iw();

    public boolean jy() {
        if (this.wp != null && com.bytedance.sdk.openadsdk.core.r.r.gh(this.s) != 1 && !com.bytedance.sdk.openadsdk.core.r.r.o(this.s)) {
            op<String, Object> dq2 = new op().dq(TTDownloadField.TT_DOWNLOAD_URL, this.p.d()).dq(TTDownloadField.TT_HASHCODE, Integer.valueOf(o()));
            Bridge bridge = this.wp;
            hat f2 = hat.f();
            f2.f19148c.put(0, dq2);
            if (((Boolean) bridge.call(6, f2.k(), Boolean.class)).booleanValue()) {
                com.bytedance.sdk.openadsdk.h.mn.dq(new Runnable() { // from class: com.bytedance.sdk.openadsdk.core.o.ox.ia.5
                    @Override // java.lang.Runnable
                    public void run() {
                        Toast.makeText(ia.this.getContext(), "应用正在下载...", 0).show();
                    }
                });
                return false;
            }
        }
        return true;
    }

    @Override // com.bytedance.sdk.openadsdk.core.o.d.ox
    public void kk() {
        com.bytedance.sdk.openadsdk.core.o.d.s sVar = this.ig;
        if (sVar != null) {
            sVar.d();
        }
        iw();
        HashSet<Integer> hashSet = this.no;
        if (hashSet != null && hashSet.size() > 0) {
            HashSet hashSet2 = new HashSet();
            hashSet2.addAll(this.no);
            this.no.clear();
            final Iterator it = hashSet2.iterator();
            com.bytedance.sdk.openadsdk.h.mn.dq(new com.bytedance.sdk.component.o.kk("remove_log_hanlder") { // from class: com.bytedance.sdk.openadsdk.core.o.ox.ia.4
                @Override // java.lang.Runnable
                public void run() {
                    while (it.hasNext()) {
                        Integer num = (Integer) it.next();
                        num.getClass();
                        Bridge bridge = ia.this.wp;
                        if (bridge != null) {
                            hat g2 = hat.g(1);
                            g2.f19148c.put(0, new op().dq(TTDownloadField.TT_HID, num).dq(TTDownloadField.TT_HASHCODE, Integer.valueOf(ia.this.o())));
                            bridge.call(3, g2.k(), Void.class);
                        }
                        it.remove();
                    }
                }
            });
        }
        WeakReference<Context> weakReference = this.ox;
        if (weakReference != null) {
            weakReference.clear();
            this.ox = null;
        }
    }

    public boolean kk(boolean z) {
        if (this.p == null || !ox()) {
            return false;
        }
        boolean dq2 = com.bytedance.sdk.openadsdk.core.o.ox.d.ox.dq(getContext(), this.p.dq(), this.s, this.iw, this.fw);
        if (!dq2) {
            mn(false);
            return dq2;
        }
        Message obtain = Message.obtain();
        obtain.what = 9;
        obtain.obj = Boolean.valueOf(z);
        this.mp.sendMessageDelayed(obtain, 3000L);
        com.bytedance.sdk.openadsdk.core.ox.dq().dq("save_jump_success_time", System.currentTimeMillis());
        com.bytedance.sdk.openadsdk.core.ox.dq().dq("save_jump_success_ad_tag", this.iw);
        com.bytedance.sdk.openadsdk.core.ox.dq().dq("save_dpl_success_materialmeta", this.s.ve().toString());
        return dq2;
    }

    public void mn(boolean z) {
        if (z) {
            com.bytedance.sdk.openadsdk.core.ig.ox.d(this.s, this.iw, "quickapp_success");
        } else {
            com.bytedance.sdk.openadsdk.core.ig.ox.d(this.s, this.iw, "quickapp_fail");
        }
    }

    public void mp() {
        if (this.ox == null) {
            return;
        }
        Context context = getContext();
        Activity activity = context instanceof Activity ? (Activity) context : null;
        if (activity == null || !com.bytedance.sdk.openadsdk.core.no.ia().dq(activity)) {
            fw();
        } else {
            d(activity);
        }
    }

    public com.bytedance.sdk.openadsdk.core.o.ox.ox.ox no() {
        return this.i;
    }

    public void ox(JSONObject jSONObject, boolean z) {
        com.bytedance.sdk.openadsdk.core.r.p pVar = this.p;
        if (pVar == null || pVar.d() == null) {
            return;
        }
        dq(jSONObject, z);
    }

    public void ox(boolean z) {
        this.fw = z;
    }

    @Override // com.bytedance.sdk.openadsdk.core.o.d.ox
    public boolean ox() {
        j jVar = this.s;
        return (jVar == null || this.p == null || com.bytedance.sdk.openadsdk.core.r.r.iw(jVar) != 3 || this.p.dq() == null) ? false : true;
    }

    public void p(JSONObject jSONObject, boolean z) {
        iw(jSONObject, z);
        this.ia.set(true);
    }

    @Override // com.bytedance.sdk.openadsdk.core.o.d.ox
    public void p(boolean z) {
        this.kx = z;
    }

    public boolean p() {
        if (this.s.kf() != null) {
            String dq2 = this.s.kf().dq();
            if (!TextUtils.isEmpty(dq2)) {
                com.bytedance.sdk.openadsdk.core.r.fw.dq((String) null);
                Uri parse = Uri.parse(dq2);
                Intent intent = new Intent("android.intent.action.VIEW");
                intent.setData(parse);
                c.d(intent);
                if (this.fw) {
                    com.bytedance.sdk.openadsdk.core.ig.ox.d(this.s, this.iw, "lp_open_dpl", dq(dq2));
                }
                if (c.dq(getContext(), intent)) {
                    try {
                        c.dq(this.fw, TTMiddlePageActivity.dq(this.s), this.s, this.iw);
                        if (!dq(this.iw, "open_url_app", this.s)) {
                            com.bytedance.sdk.openadsdk.core.ig.ox.ia(this.s, this.iw, "open_url_app", null);
                        }
                        com.bytedance.sdk.component.utils.d.startActivity(getContext(), intent, TextUtils.equals("main", "internal"));
                        com.bytedance.sdk.openadsdk.core.ig.iw.dq().dq(this.s, this.iw, this.fw);
                        if (this.fw) {
                            com.bytedance.sdk.openadsdk.core.ig.ox.p(this.s, this.iw, "lp_openurl");
                            com.bytedance.sdk.openadsdk.core.ig.ox.p(this.s, this.iw, "lp_deeplink_success_realtime");
                        } else {
                            com.bytedance.sdk.openadsdk.core.ig.ox.p(this.s, this.iw, "deeplink_success_realtime");
                        }
                        return true;
                    } catch (Throwable unused) {
                        if (!TextUtils.isEmpty(this.s.ae())) {
                            wn.dq(getContext(), this.s.ae(), this.s, c.dq(this.iw), this.iw, (Map<String, Object>) null);
                        }
                        if (this.fw) {
                            com.bytedance.sdk.openadsdk.core.ig.ox.ox(this.s, this.iw, "lp_openurl_failed");
                            dq(this.s, this.iw, "lp_deeplink_fail_realtime");
                        } else {
                            dq(this.s, this.iw, "deeplink_fail_realtime");
                        }
                        return false;
                    }
                }
                if (this.fw) {
                    com.bytedance.sdk.openadsdk.core.ig.ox.ox(this.s, this.iw, "lp_openurl_failed");
                    dq(this.s, this.iw, "lp_deeplink_fail_realtime");
                } else {
                    dq(this.s, this.iw, "deeplink_fail_realtime");
                }
            }
            if (this.mn.get() != 4 && this.mn.get() != 3 && (!this.kk || this.ia.get())) {
                this.kk = true;
                if (!dq(this.iw, "open_fallback_url", this.s)) {
                    com.bytedance.sdk.openadsdk.core.ig.ox.ia(this.s, this.iw, "open_fallback_url", null);
                }
            }
        }
        return false;
    }

    public int q() {
        return this.mn.get();
    }

    @Override // com.bytedance.sdk.openadsdk.core.o.d.ox
    public Map<String, Object> s() {
        return new HashMap();
    }

    public void s(JSONObject jSONObject, boolean z) {
        if (p()) {
            this.ia.set(true);
            return;
        }
        if ((!this.fw || this.cd) && this.s.gm() == null && this.s.ae() != null && !this.s.ro()) {
            wn.dq(getContext(), this.s.ae(), this.s, c.dq(this.iw), this.iw, (Map<String, Object>) null);
        } else if (kk(z)) {
            this.ia.set(true);
        } else {
            if (this.s.ro()) {
                return;
            }
            ox(jSONObject, z);
        }
    }

    @Override // com.bytedance.sdk.openadsdk.core.o.d.ox
    public void s(boolean z) {
        dq(z);
        d();
    }
}
