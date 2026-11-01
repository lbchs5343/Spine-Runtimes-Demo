package g;

import android.content.DialogInterface;
import cn.trinea.android.developertools.R;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;

/* loaded from: classes.dex */
public final /* synthetic */ class aip implements DialogInterface.OnClickListener {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f10275a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Object f10276b;

    public /* synthetic */ aip(int i, Object obj) {
        this.f10275a = i;
        this.f10276b = obj;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public final void onClick(DialogInterface dialogInterface, int i) {
        int i2 = this.f10275a;
        Object obj = this.f10276b;
        switch (i2) {
            case 0:
                atk atkVar = (atk) obj;
                boolean z = i == 0;
                if (atkVar.s != null) {
                    if (!dyd.aa()) {
                        fyt.h(atkVar, new String[]{"android.permission.WRITE_EXTERNAL_STORAGE"}, z ? 200 : MediaPlayer.MEDIA_PLAYER_OPTION_DISABLE_SHORT_SEEK);
                        break;
                    } else {
                        atkVar.ae(z);
                        break;
                    }
                } else {
                    gm.f(atkVar.r, R.string.save_failed_no_content);
                    break;
                }
            case 1:
                dialogInterface.dismiss();
                ((Runnable) obj).run();
                break;
            default:
                c.e.a aVar = (c.e.a) obj;
                int i3 = c.e.a.f387d;
                dialogInterface.dismiss();
                cro.af(aVar.p, "applist_grid_mode", i == 1);
                aVar.o();
                break;
        }
    }
}
