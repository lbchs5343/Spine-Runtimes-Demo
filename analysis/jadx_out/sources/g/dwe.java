package g;

import android.content.DialogInterface;
import android.content.Intent;
import android.provider.CalendarContract;
import com.bykv.vk.component.ttvideo.player.C;
import com.google.android.gms.internal.ads.zzbsb;

/* loaded from: classes3.dex */
public final class dwe implements DialogInterface.OnClickListener {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f14921a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ zzbsb f14922b;

    public /* synthetic */ dwe(zzbsb zzbsbVar, int i) {
        this.f14921a = i;
        this.f14922b = zzbsbVar;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public final void onClick(DialogInterface dialogInterface, int i) {
        switch (this.f14921a) {
            case 0:
                Intent data = new Intent("android.intent.action.EDIT").setData(CalendarContract.Events.CONTENT_URI);
                zzbsb zzbsbVar = this.f14922b;
                data.putExtra(abn.EXTRA_TITLE, zzbsbVar.f4947c);
                data.putExtra("eventLocation", zzbsbVar.f4949e);
                data.putExtra("description", zzbsbVar.f4945a);
                long j = zzbsbVar.f4948d;
                if (j > -1) {
                    data.putExtra("beginTime", j);
                }
                long j2 = zzbsbVar.f4951g;
                if (j2 > -1) {
                    data.putExtra("endTime", j2);
                }
                data.setFlags(C.ENCODING_PCM_MU_LAW);
                esy esyVar = ti.f20033a.z;
                esy.ad(zzbsbVar.f4946b, data);
                break;
            default:
                this.f14922b.zzh("Operation denied by user.");
                break;
        }
    }
}
