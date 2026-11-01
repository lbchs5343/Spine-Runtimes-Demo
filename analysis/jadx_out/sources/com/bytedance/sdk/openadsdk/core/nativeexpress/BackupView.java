package com.bytedance.sdk.openadsdk.core.nativeexpress;

import android.app.Dialog;
import android.content.Context;
import android.text.TextUtils;
import android.view.View;
import android.widget.FrameLayout;
import com.bytedance.sdk.component.adexpress.theme.ThemeStatusBroadcastReceiver;
import com.bytedance.sdk.openadsdk.core.activity.base.TTDelegateActivity;
import com.bytedance.sdk.openadsdk.core.ir.c;
import com.bytedance.sdk.openadsdk.core.ir.ce;
import com.bytedance.sdk.openadsdk.core.r.j;
import com.bytedance.sdk.openadsdk.core.r.pa;
import com.bytedance.sdk.openadsdk.core.video.nativevideo.NativeVideoTsView;
import org.json.JSONException;

/* loaded from: classes3.dex */
public abstract class BackupView extends FrameLayout implements com.bytedance.sdk.component.adexpress.theme.dq {

    /* renamed from: d, reason: collision with root package name */
    protected j f3200d;
    protected Context dq;
    protected int ia;
    public com.bytedance.sdk.openadsdk.core.multipro.d.dq ig;
    protected int iw;
    protected boolean kk;
    protected int mn;
    private NativeVideoTsView mp;
    protected String no;
    protected boolean o;
    protected com.bytedance.sdk.openadsdk.core.dislike.ui.dq ox;
    protected Dialog p;
    protected String s;

    public BackupView(Context context) {
        super(context);
        this.s = "embeded_ad";
        this.kk = true;
        this.o = true;
        this.ig = new com.bytedance.sdk.openadsdk.core.multipro.d.dq();
        dq();
    }

    private boolean d() {
        if (p()) {
            return ox();
        }
        j jVar = this.f3200d;
        return jVar != null && j.d(jVar);
    }

    private void dq() {
        setTag("tt_express_backup_fl_tag_26");
    }

    private boolean ox() {
        com.bykv.vk.openvk.component.video.api.ox.ox q;
        j jVar = this.f3200d;
        return (jVar == null || jVar.dc() == 1 || (q = pa.q(this.f3200d)) == null || TextUtils.isEmpty(q.ig())) ? false : true;
    }

    private boolean p() {
        return TextUtils.equals(this.s, "splash_ad") || TextUtils.equals(this.s, "cache_splash_ad");
    }

    public void b_(int i) {
    }

    public void d(int i) {
        this.o = com.bytedance.sdk.openadsdk.core.wp.d().p(this.ia);
        int mn = com.bytedance.sdk.openadsdk.core.wp.d().mn(i);
        if (3 == mn) {
            this.kk = false;
            return;
        }
        if (1 != mn || !com.bytedance.sdk.component.utils.q.p(this.dq)) {
            if (2 == mn) {
                if (com.bytedance.sdk.component.utils.q.s(this.dq) || com.bytedance.sdk.component.utils.q.p(this.dq) || com.bytedance.sdk.component.utils.q.iw(this.dq)) {
                    this.kk = true;
                    return;
                }
                return;
            }
            if (5 != mn) {
                return;
            }
            if (!com.bytedance.sdk.component.utils.q.p(this.dq) && !com.bytedance.sdk.component.utils.q.iw(this.dq)) {
                return;
            }
        }
        this.kk = true;
    }

    public View dq(final NativeExpressView nativeExpressView) {
        BackupView backupView;
        NativeVideoTsView nativeVideoTsView;
        NativeVideoTsView nativeVideoTsView2 = this.mp;
        if (nativeVideoTsView2 != null) {
            return nativeVideoTsView2;
        }
        if (this.f3200d != null && this.dq != null) {
            if (d()) {
                try {
                    backupView = this;
                } catch (Throwable unused) {
                    backupView = this;
                }
                try {
                    NativeVideoTsView dq = backupView.dq(this.dq, this.f3200d, this.s, true, false);
                    backupView.mp = dq;
                    dq.setAdCreativeClickListener(new NativeVideoTsView.dq() { // from class: com.bytedance.sdk.openadsdk.core.nativeexpress.BackupView.2
                        @Override // com.bytedance.sdk.openadsdk.core.video.nativevideo.NativeVideoTsView.dq
                        public void dq(View view, int i) {
                            dq expressInteractionListener = nativeExpressView.getExpressInteractionListener();
                            if (expressInteractionListener == null) {
                                return;
                            }
                            expressInteractionListener.dq(view, i);
                        }
                    });
                    backupView.mp.setVideoCacheUrl(backupView.no);
                    backupView.mp.setControllerStatusCallBack(new NativeVideoTsView.ox() { // from class: com.bytedance.sdk.openadsdk.core.nativeexpress.BackupView.3
                        @Override // com.bytedance.sdk.openadsdk.core.video.nativevideo.NativeVideoTsView.ox
                        public void dq(boolean z, long j, long j2, long j3, boolean z2, boolean z3) {
                            com.bytedance.sdk.openadsdk.core.multipro.d.dq dqVar = BackupView.this.ig;
                            dqVar.dq = z;
                            dqVar.s = j;
                            dqVar.iw = j2;
                            dqVar.mn = j3;
                            dqVar.p = z2;
                            dqVar.ia = z3;
                        }
                    });
                    backupView.mp.setIsAutoPlay(backupView.kk);
                    backupView.mp.setIsQuiet(backupView.o);
                } catch (Throwable unused2) {
                    backupView.mp = null;
                    if (d()) {
                        return backupView.mp;
                    }
                    return null;
                }
            } else {
                backupView = this;
            }
            if (d() && (nativeVideoTsView = backupView.mp) != null && nativeVideoTsView.dq(0L, true, false)) {
                return backupView.mp;
            }
        }
        return null;
    }

    public NativeVideoTsView dq(Context context, j jVar, String str, boolean z, boolean z2) {
        return new NativeVideoTsView(context, jVar, str, z, z2);
    }

    public void dq(View view) {
        if (pa.q(this.f3200d) == null || view == null) {
            return;
        }
        dq(view, this.f3200d.gx() == 1 && this.kk);
    }

    public abstract void dq(View view, int i, com.bytedance.sdk.openadsdk.core.r.k kVar);

    public void dq(View view, boolean z) {
        final com.bytedance.sdk.openadsdk.core.d.d dVar;
        if (view == null) {
            return;
        }
        if (z) {
            Context context = this.dq;
            j jVar = this.f3200d;
            String str = this.s;
            dVar = new com.bytedance.sdk.openadsdk.core.d.dq(context, jVar, str, c.dq(str));
        } else {
            Context context2 = this.dq;
            j jVar2 = this.f3200d;
            String str2 = this.s;
            dVar = new com.bytedance.sdk.openadsdk.core.d.d(context2, jVar2, str2, c.dq(str2));
        }
        view.setOnTouchListener(dVar);
        view.setOnClickListener(dVar);
        ox oxVar = new ox() { // from class: com.bytedance.sdk.openadsdk.core.nativeexpress.BackupView.1
            @Override // com.bytedance.sdk.openadsdk.core.nativeexpress.ox
            public void dq(View view2, int i, com.bytedance.sdk.openadsdk.core.r.k kVar) {
                try {
                    kVar.dq().put("click_extra_map", ((com.bytedance.sdk.openadsdk.core.d.dq.ox.dq) dVar.dq(com.bytedance.sdk.openadsdk.core.d.dq.ox.dq.class)).s());
                } catch (JSONException unused) {
                }
                BackupView.this.dq(view2, i, kVar);
            }
        };
        com.bytedance.sdk.openadsdk.core.d.dq.d.dq dqVar = (com.bytedance.sdk.openadsdk.core.d.dq.d.dq) dVar.dq(com.bytedance.sdk.openadsdk.core.d.dq.d.dq.class);
        if (dqVar != null) {
            dqVar.dq(oxVar);
            dqVar.dq(z ? 2 : 1);
        }
    }

    public String getDescription() {
        return !TextUtils.isEmpty(this.f3200d.lk()) ? this.f3200d.lk() : !TextUtils.isEmpty(this.f3200d.gl()) ? this.f3200d.gl() : "";
    }

    public j getMeta() {
        return this.f3200d;
    }

    public String getNameOrSource() {
        j jVar = this.f3200d;
        return jVar == null ? "" : (jVar.gm() == null || TextUtils.isEmpty(this.f3200d.gm().ox())) ? !TextUtils.isEmpty(this.f3200d.w()) ? this.f3200d.w() : "" : this.f3200d.gm().ox();
    }

    public float getRealHeight() {
        return ce.p(this.dq, this.mn);
    }

    public float getRealWidth() {
        return ce.p(this.dq, this.iw);
    }

    @Override // android.view.View
    public Object getTag() {
        return "tt_express_backup_fl_tag_26";
    }

    public String getTitle() {
        return (this.f3200d.gm() == null || TextUtils.isEmpty(this.f3200d.gm().ox())) ? !TextUtils.isEmpty(this.f3200d.w()) ? this.f3200d.w() : !TextUtils.isEmpty(this.f3200d.lk()) ? this.f3200d.lk() : "" : this.f3200d.gm().ox();
    }

    public com.bytedance.sdk.openadsdk.core.multipro.d.dq getVideoModel() {
        return this.ig;
    }

    public void s() {
        Dialog dialog = this.p;
        if (dialog != null) {
            dialog.show();
            return;
        }
        com.bytedance.sdk.openadsdk.core.dislike.ui.dq dqVar = this.ox;
        if (dqVar != null) {
            dqVar.dq();
        } else {
            TTDelegateActivity.dq(getContext(), this.f3200d);
        }
    }

    public void setDislikeInner(com.bytedance.sdk.openadsdk.f.d.d.ia iaVar) {
        if (iaVar instanceof com.bytedance.sdk.openadsdk.core.dislike.ui.dq) {
            this.ox = (com.bytedance.sdk.openadsdk.core.dislike.ui.dq) iaVar;
        }
    }

    public void setDislikeOuter(Dialog dialog) {
        this.p = dialog;
    }

    @Override // android.view.View
    public void setTag(Object obj) {
        super.setTag("tt_express_backup_fl_tag_26");
    }

    public void setThemeChangeReceiver(ThemeStatusBroadcastReceiver themeStatusBroadcastReceiver) {
        if (themeStatusBroadcastReceiver == null) {
            return;
        }
        themeStatusBroadcastReceiver.dq(this);
    }
}
