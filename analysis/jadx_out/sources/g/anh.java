package g;

import android.app.AlertDialog;
import android.content.Context;
import android.content.Intent;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.os.Handler;
import android.text.TextUtils;
import android.view.View;
import android.view.Window;
import android.widget.ImageView;
import cn.trinea.android.developertools.R;

/* loaded from: classes.dex */
public final class anh implements View.OnClickListener {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ Object f10515a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f10516b;

    /* renamed from: c, reason: collision with root package name */
    public final Object f10517c;

    public /* synthetic */ anh(Context context, Object obj, int i) {
        this.f10516b = i;
        this.f10517c = context;
        this.f10515a = obj;
    }

    public anh(fxu fxuVar) {
        this.f10516b = 9;
        this.f10515a = fxuVar;
        Context context = fxuVar.h.getContext();
        CharSequence charSequence = fxuVar.f17591a;
        bdt bdtVar = new bdt();
        bdtVar.f11349g = 4096;
        bdtVar.p = 4096;
        bdtVar.f11348f = null;
        bdtVar.k = null;
        bdtVar.f11346d = false;
        bdtVar.f11345c = false;
        bdtVar.j = 16;
        bdtVar.l = context;
        bdtVar.h = charSequence;
        this.f10517c = bdtVar;
    }

    public /* synthetic */ anh(Object obj, int i, Object obj2) {
        this.f10516b = i;
        this.f10515a = obj;
        this.f10517c = obj2;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        Boolean valueOf;
        int i = 0;
        int i2 = 1;
        switch (this.f10516b) {
            case 0:
                dis disVar = (dis) this.f10515a;
                aoi aoiVar = disVar.l;
                if (aoiVar != null) {
                    int i3 = disVar.j + 1;
                    disVar.j = i3;
                    Integer valueOf2 = Integer.valueOf(i3);
                    int i4 = aoiVar.f10569a;
                    Object obj = aoiVar.f10570b;
                    switch (i4) {
                        case 3:
                            int i5 = b.b.a.f352d;
                            valueOf = Boolean.valueOf(fml.a(((b.b.a) obj).bb, valueOf2.intValue()));
                            break;
                        case 4:
                            int i6 = c.c.c.f386d;
                            valueOf = Boolean.valueOf(fml.a(((c.c.c) obj).bb, valueOf2.intValue()));
                            break;
                        case 13:
                            valueOf = Boolean.valueOf(fml.a(((doq) obj).bb, valueOf2.intValue()));
                            break;
                        default:
                            int i7 = b.a.b.f351d;
                            valueOf = Boolean.valueOf(fml.a(((b.a.b) obj).bb, valueOf2.intValue()));
                            break;
                    }
                    if (valueOf.booleanValue()) {
                        b.a.b bVar = disVar.i;
                        if (awf.n(bVar)) {
                            bVar.fullScreenAdShow();
                        }
                    }
                }
                fgj.e().f(disVar.f13438e, new Intent(disVar.f13438e, (Class<?>) disVar.h).putExtra("package_name", ((auj) this.f10517c).h).putExtra("show_ad_banner", disVar.k));
                return;
            case 1:
                gmi gmiVar = (gmi) this.f10515a;
                auj aujVar = (auj) this.f10517c;
                if (aujVar != null && hca.g(aujVar.h)) {
                    gm.f(gmiVar.f13438e, R.string.manifest_dev_tool);
                    return;
                }
                Intent putExtra = new Intent(gmiVar.f13438e, (Class<?>) b.a.c.class).putExtra("PACKAGE_NAME", aujVar.h).putExtra("APP_NAME", aujVar.j);
                if (gmiVar.h.isTrial()) {
                    putExtra.putExtra("ts", gmiVar.h);
                }
                fgj.e().g(gmiVar.f13438e, putExtra, true, false, !gmiVar.h.isTrial());
                return;
            case 2:
                Context context = (Context) this.f10517c;
                gqc gqcVar = new gqc(context);
                ((die) gqcVar.z).f14221f = ((brq) this.f10515a).f12087a.name;
                gqcVar.aw(R.array.view_component_menu, new fgw(i2, this));
                eyt.ay(context, gqcVar.ak());
                return;
            case 3:
                eas easVar = (eas) this.f10515a;
                if (easVar.f13440g) {
                    efx efxVar = easVar.f13438e;
                    String str = ((auj) this.f10517c).h;
                    if (!TextUtils.isEmpty(str)) {
                        String[] strArr = {str};
                        synchronized (aoy.class) {
                            try {
                                Cursor query = ((SQLiteDatabase) aoy.n(efxVar).h).query(ada.COLUMN_DOMAIN, null, "pn=?", strArr, null, null, null);
                                if (query != null) {
                                    r4 = query.moveToFirst() ? cux.ad(query) : null;
                                    if (!query.isClosed()) {
                                        query.close();
                                    }
                                }
                            } finally {
                            }
                        }
                    }
                    boolean z = r4 != null && ((auj) this.f10517c).f10871g == r4.f13765e;
                    gqc gqcVar2 = new gqc(((eas) this.f10515a).f13438e);
                    auj aujVar2 = (auj) this.f10517c;
                    ((die) gqcVar2.z).f14221f = aujVar2.j;
                    ((die) gqcVar2.z).v = aujVar2.l(((eas) this.f10515a).f13438e, true);
                    gqcVar2.aw(z ? R.array.decompile_menu2 : R.array.decompile_menu, new azn(this, i, z));
                    eyt.ay(((eas) this.f10515a).f13438e, gqcVar2.ak());
                    return;
                }
                return;
            case 4:
                Context context2 = (Context) this.f10517c;
                if (!afo.ak(context2)) {
                    afo.ai(context2);
                    return;
                } else {
                    afo.ao(context2, false);
                    ((AlertDialog) this.f10515a).dismiss();
                    return;
                }
            case 5:
                gfg gfgVar = (gfg) this.f10515a;
                gfgVar.an.setEnabled(false);
                la laVar = gfgVar.am;
                fzn l = fzn.l((b.c.d) laVar.f19578c);
                Intent intent = new Intent(laVar.f19581f);
                gvs gvsVar = (gvs) this.f10517c;
                l.q(intent.putExtra(bid.EXTRA_FILE_PATH, gvsVar.f18834a).putExtra("fn", gvsVar.f18835b));
                gfgVar.an.postDelayed(new byd(15, this), 1000L);
                return;
            case 6:
                doq doqVar = (doq) this.f10515a;
                if (baf.ap(doqVar.bb, (String) this.f10517c, true)) {
                    return;
                }
                gm.f(doqVar.bb, R.string.open_fail);
                return;
            case 7:
                eas easVar2 = (eas) this.f10515a;
                if (easVar2.f13440g) {
                    Handler handler = easVar2.i;
                    handler.sendMessage(handler.obtainMessage(1, (auj) this.f10517c));
                    return;
                }
                return;
            case 8:
                ms msVar = (ms) this.f10515a;
                msVar.an.setEnabled(false);
                la laVar2 = msVar.am;
                fzn l2 = fzn.l(laVar2.f19578c);
                Intent intent2 = new Intent(laVar2.f19581f);
                gvs gvsVar2 = (gvs) this.f10517c;
                l2.q(intent2.putExtra(bid.EXTRA_FILE_PATH, gvsVar2.f18834a).putExtra("fn", gvsVar2.f18835b));
                msVar.an.postDelayed(new byd(28, this), 1000L);
                return;
            case 9:
                fxu fxuVar = (fxu) this.f10515a;
                Window.Callback callback = fxuVar.f17592b;
                if (callback == null || !fxuVar.f17596f) {
                    return;
                }
                callback.onMenuItemSelected(0, (bdt) this.f10517c);
                return;
            default:
                ImageView imageView = (ImageView) this.f10517c;
                if (drp.f14674a) {
                    imageView.setImageResource(R.drawable.start);
                } else {
                    imageView.setImageResource(R.drawable.stop);
                }
                gm.f(((drp) this.f10515a).h, !drp.f14674a ? R.string.window_viewer_operate_start_success : R.string.window_viewer_operate_stop_success);
                drp.f14674a = !drp.f14674a;
                return;
        }
    }
}
