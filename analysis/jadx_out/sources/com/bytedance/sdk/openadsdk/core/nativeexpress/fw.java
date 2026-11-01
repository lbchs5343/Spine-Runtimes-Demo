package com.bytedance.sdk.openadsdk.core.nativeexpress;

import android.os.Looper;
import android.view.View;
import com.bytedance.sdk.component.adexpress.theme.ThemeStatusBroadcastReceiver;
import com.bytedance.sdk.openadsdk.TTAdConstant;

/* loaded from: classes3.dex */
public class fw extends com.bytedance.sdk.component.adexpress.d.dq<BackupView> {

    /* renamed from: d, reason: collision with root package name */
    private View f3225d;
    private BackupView dq;
    private com.bytedance.sdk.component.adexpress.d.mp iw;
    private ThemeStatusBroadcastReceiver ox;
    private com.bytedance.sdk.component.adexpress.d.ox p;
    private com.bytedance.sdk.component.adexpress.d.mn s;

    public fw(View view, ThemeStatusBroadcastReceiver themeStatusBroadcastReceiver, com.bytedance.sdk.component.adexpress.d.mp mpVar) {
        this.f3225d = view;
        this.ox = themeStatusBroadcastReceiver;
        this.iw = mpVar;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void d() {
        com.bytedance.sdk.component.adexpress.d.ox oxVar = this.p;
        if (oxVar == null || !oxVar.dq((NativeExpressView) this.f3225d, 0)) {
            this.s.dq(107, (String) null);
            return;
        }
        this.iw.s().o();
        BackupView backupView = (BackupView) this.f3225d.findViewWithTag("tt_express_backup_fl_tag_26");
        this.dq = backupView;
        if (backupView == null) {
            this.s.dq(107, (String) null);
            return;
        }
        backupView.setThemeChangeReceiver(this.ox);
        com.bytedance.sdk.component.adexpress.d.q qVar = new com.bytedance.sdk.component.adexpress.d.q();
        BackupView backupView2 = this.dq;
        float f2 = TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT;
        float realWidth = backupView2 == null ? TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT : backupView2.getRealWidth();
        BackupView backupView3 = this.dq;
        if (backupView3 != null) {
            f2 = backupView3.getRealHeight();
        }
        qVar.dq(true);
        qVar.dq(realWidth);
        qVar.d(f2);
        this.s.dq(this.dq, qVar);
    }

    @Override // com.bytedance.sdk.component.adexpress.d.p
    /* renamed from: dq, reason: merged with bridge method [inline-methods] */
    public BackupView mn() {
        return this.dq;
    }

    @Override // com.bytedance.sdk.component.adexpress.d.p
    public void dq(com.bytedance.sdk.component.adexpress.d.mn mnVar) {
        this.s = mnVar;
        if (Looper.myLooper() == Looper.getMainLooper()) {
            d();
        } else {
            com.bytedance.sdk.openadsdk.core.le.iw().post(new Runnable() { // from class: com.bytedance.sdk.openadsdk.core.nativeexpress.fw.1
                @Override // java.lang.Runnable
                public void run() {
                    fw.this.d();
                }
            });
        }
    }

    @Override // com.bytedance.sdk.component.adexpress.d.dq
    public void dq(com.bytedance.sdk.component.adexpress.d.ox oxVar) {
        this.p = oxVar;
    }
}
