package b.c;

import android.os.Bundle;
import android.text.TextUtils;
import android.util.DisplayMetrics;
import android.view.Menu;
import android.view.MenuItem;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import cn.trinea.android.developertools.R;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import g.ahx;
import g.buj;
import g.byh;
import g.bys;
import g.ciz;
import g.dbv;
import g.dxn;
import g.edn;
import g.eg;
import g.fml;
import g.fsk;
import g.fso;
import g.has;
import g.th;
import java.util.ArrayList;
import java.util.Iterator;

/* loaded from: classes.dex */
public class b extends dxn {

    /* renamed from: d, reason: collision with root package name */
    public RecyclerView f354d;

    public static boolean e(ArrayList arrayList, int i, String str, String str2) {
        if (TextUtils.isEmpty(str) || TextUtils.isEmpty(str2)) {
            return false;
        }
        if (i >= 0) {
            arrayList.add(i, new th(str, str2));
            return true;
        }
        arrayList.add(new th(str, str2));
        return true;
    }

    @Override // g.cms, g.dms, androidx.fragment.app.u, androidx.activity.ComponentActivity, g.emf, android.app.Activity
    public final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R.layout.activity_ui_standard_size);
        this.f354d = (RecyclerView) findViewById(R.id.recycler_view);
        this.f354d.setLayoutManager(new LinearLayoutManager(1));
        if (fml.e(this)) {
            bannerAdInit(fml.f(this), getString(byh.aj(this) ? R.string.ad_unit_id_ui_standard_c : R.string.ad_unit_id_ui_standard_g));
            bannerAdShow();
        }
        if (buj.h == null) {
            synchronized (buj.class) {
                try {
                    if (buj.h == null) {
                        ArrayList arrayList = new ArrayList();
                        buj.h = arrayList;
                        arrayList.add(new ahx("mdpi", "48*48", 160, "22*22 area in 24*24", "24*24 area in 32*32"));
                        buj.h.add(new ahx("hdpi", "72*72", MediaPlayer.MEDIA_PLAYER_OPTION_GET_PLAY_WASTE_DATA, "33*33 area in 36*36", "36*36 area in 48*48"));
                        buj.h.add(new ahx("xhdpi", "96*96", MediaPlayer.MEDIA_PLAYER_OPTION_LAST_VIDEO_RENDER_TIME, "44*44 area in 48*48", "48*48 area in 64*64"));
                        buj.h.add(new ahx("xxhdpi", "144*144", 480, "66*66 area in 72*72", "72*72 area in 96*96"));
                        buj.h.add(new ahx("xxxhdpi", "192*192", MediaPlayer.MEDIA_PLAYER_OPTION_ENABLE_FRAME_DTS_CHECK, "88*88 area in 96*96", "96*96 area in 128*128"));
                        ArrayList arrayList2 = buj.h;
                        ahx ahxVar = new ahx();
                        ahxVar.f10247d = 0;
                        ahxVar.f10248e = "Google Play";
                        ahxVar.f10244a = "512*512";
                        arrayList2.add(ahxVar);
                    }
                } finally {
                }
            }
        }
        ArrayList arrayList3 = buj.h;
        DisplayMetrics displayMetrics = getResources().getDisplayMetrics();
        ahx ahxVar2 = null;
        String t = displayMetrics == null ? null : fso.t(displayMetrics.densityDpi);
        ArrayList arrayList4 = new ArrayList();
        Iterator it = arrayList3.iterator();
        int i = 0;
        while (it.hasNext()) {
            ahx ahxVar3 = (ahx) it.next();
            i++;
            if (t == null || !t.equalsIgnoreCase(ahxVar3.f10248e)) {
                arrayList4.add(ahxVar3);
                e(arrayList4, -1, "Launcher Icons", ahxVar3.f10244a);
                e(arrayList4, -1, "Notification Icons", ahxVar3.f10245b);
                e(arrayList4, -1, "Action Bar and Tab Icons", ahxVar3.f10246c);
                if (i < arrayList3.size()) {
                    arrayList4.add(new edn());
                }
            } else {
                ahxVar2 = new ahx();
                ahxVar2.f10247d = ahxVar3.f10247d;
                ahxVar2.f10248e = ahxVar3.f10248e;
                ahxVar2.f10244a = ahxVar3.f10244a;
                ahxVar2.f10245b = ahxVar3.f10245b;
                ahxVar2.f10246c = ahxVar3.f10246c;
            }
        }
        if (ahxVar2 != null) {
            ahxVar2.f10248e = getString(R.string.dpi_current) + ahxVar2.f10248e;
            arrayList4.add(0, ahxVar2);
            e(arrayList4, 1, "Launcher Icons", ahxVar2.f10244a);
            e(arrayList4, 2, "Notification Icons", ahxVar2.f10245b);
            e(arrayList4, 3, "Action Bar and Tab Icons", ahxVar2.f10246c);
            arrayList4.add(4, new edn());
        }
        fml.e(this);
        dbv dbvVar = new dbv(this, arrayList4);
        ciz cizVar = new ciz(this);
        cizVar.f12961f = R.layout.item_ui_standard;
        dbvVar.g(th.class, cizVar);
        dbvVar.g(ahx.class, new fsk(3));
        has hasVar = new has();
        hasVar.f19145c = R.layout.view_divider_lighter_gray_8;
        dbvVar.g(edn.class, hasVar);
        this.f354d.setAdapter(dbvVar);
    }

    @Override // android.app.Activity
    public final boolean onCreateOptionsMenu(Menu menu) {
        getMenuInflater().inflate(R.menu.common, menu);
        eg.af(this, "menu_open_project_ui");
        return super.onCreateOptionsMenu(menu);
    }

    @Override // g.dms, android.app.Activity
    public final boolean onOptionsItemSelected(MenuItem menuItem) {
        if (this.clickInterval.b() && menuItem.getItemId() == R.id.open_project) {
            bys.d(this, "op_source_menu_ui_standard");
            eg.v(this, "menu_open_project_ui");
            return true;
        }
        return super.onOptionsItemSelected(menuItem);
    }
}
