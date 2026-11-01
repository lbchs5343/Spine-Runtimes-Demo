package g;

import android.content.Intent;

/* loaded from: classes.dex */
public final class apc implements fcd {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ long f10606a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ ekq f10607b;

    public apc(ekq ekqVar, long j) {
        this.f10607b = ekqVar;
        this.f10606a = j;
    }

    @Override // g.fcd
    public final void h(String str) {
        ekq ekqVar = this.f10607b;
        fzn.l(ekqVar.getApplicationContext()).q(new Intent(ekq.ACTION_PERMISSION_RESULT_RECEIVER).putExtra(ekq.EXTRA_PERMISSION_RESULT, ekq.PERMISSION_RESULT_OK).putExtra(ekq.EXTRA_PERMISSION_SEQ_ID, this.f10606a));
        ekqVar.finish();
    }

    @Override // g.fcd
    public final void onDenied(String str) {
        ekq ekqVar = this.f10607b;
        fzn.l(ekqVar.getApplicationContext()).q(new Intent(ekq.ACTION_PERMISSION_RESULT_RECEIVER).putExtra(ekq.EXTRA_PERMISSION_RESULT, ekq.PERMISSION_RESULT_CANCEL).putExtra(ekq.EXTRA_PERMISSION_SEQ_ID, this.f10606a));
        ekqVar.finish();
    }
}
