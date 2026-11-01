package g;

import android.app.Activity;
import android.content.DialogInterface;
import android.content.Intent;
import android.net.Uri;
import com.bykv.vk.component.ttvideo.player.C;

/* loaded from: classes.dex */
public final class frl implements DialogInterface.OnClickListener {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ Activity f17293a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f17294b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ String f17295c;

    public /* synthetic */ frl(Activity activity, int i, String str) {
        this.f17294b = i;
        this.f17295c = str;
        this.f17293a = activity;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public final void onClick(DialogInterface dialogInterface, int i) {
        switch (this.f17294b) {
            case 0:
                Intent intent = new Intent("android.intent.action.VIEW", Uri.parse(this.f17295c));
                intent.setFlags(C.ENCODING_PCM_MU_LAW);
                fgj.e().f(this.f17293a, intent);
                break;
            default:
                fgj.e().f(this.f17293a, new Intent("android.intent.action.VIEW", Uri.parse(this.f17295c)));
                break;
        }
    }
}
