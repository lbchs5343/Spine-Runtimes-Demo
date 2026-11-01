package f.a;

import android.content.Intent;
import android.content.res.Resources;
import android.os.Bundle;
import android.util.DisplayMetrics;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.WindowManager;
import android.widget.EditText;
import android.widget.SeekBar;
import android.widget.Switch;
import cn.trinea.android.developertools.R;
import g.aco;
import g.bcr;
import g.bwl;
import g.dt;
import g.dyd;
import g.eha;
import g.epi;
import g.fso;
import g.fyt;
import g.gft;
import g.guy;

/* loaded from: classes.dex */
public class c extends guy implements eha {

    /* renamed from: d, reason: collision with root package name */
    public aco f9827d;

    /* renamed from: e, reason: collision with root package name */
    public Intent f9828e;

    /* renamed from: f, reason: collision with root package name */
    public epi f9829f;

    @Override // g.guy
    public final String g() {
        return getString(R.string.fm_window_permission_usage);
    }

    @Override // g.fcd
    public final void h(String str) {
        epi epiVar;
        if (!"android.settings.action.MANAGE_OVERLAY_PERMISSION".equals(str) || (epiVar = this.f9829f) == null) {
            return;
        }
        if (!epiVar.i) {
            synchronized (epi.class) {
                epiVar.i = true;
            }
            Resources resources = epiVar.getResources();
            int dimensionPixelSize = resources.getDimensionPixelSize(R.dimen.fm_ope_width);
            DisplayMetrics displayMetrics = resources.getDisplayMetrics();
            int i = displayMetrics.widthPixels / 2;
            int i2 = displayMetrics.heightPixels / 2;
            WindowManager.LayoutParams layoutParams = new WindowManager.LayoutParams(-2, -2, fso.ah(), -2147483384, -3);
            epiVar.l = layoutParams;
            layoutParams.gravity = 51;
            layoutParams.x = i - (dimensionPixelSize / 2);
            layoutParams.y = i2;
            View inflate = LayoutInflater.from(epiVar).inflate(R.layout.ope_window_font_measurer, (ViewGroup) null);
            epiVar.f15936c = inflate;
            ((gft) inflate.findViewById(R.id.direction)).setOnTouchListener(new bcr(0, epiVar));
            SeekBar seekBar = (SeekBar) epiVar.f15936c.findViewById(R.id.seek_bar);
            epiVar.f15934a = seekBar;
            seekBar.setOnSeekBarChangeListener(new bwl(epiVar));
            Switch r0 = (Switch) epiVar.f15936c.findViewById(R.id.current_size);
            epiVar.h = r0;
            r0.setText(epiVar.f15940g + " sp");
            epiVar.f15936c.findViewById(R.id.up).setOnClickListener(epiVar);
            epiVar.f15936c.findViewById(R.id.down).setOnClickListener(epiVar);
            epiVar.m.addView(epiVar.f15936c, epiVar.l);
            Resources resources2 = epiVar.getResources();
            int dimensionPixelSize2 = resources2.getDimensionPixelSize(R.dimen.fm_font_edit_width);
            int dimensionPixelSize3 = resources2.getDimensionPixelSize(R.dimen.fm_font_window_height);
            int i3 = resources2.getDisplayMetrics().widthPixels / 2;
            WindowManager.LayoutParams layoutParams2 = new WindowManager.LayoutParams(-2, -2, 2010, 32, -2);
            epiVar.p = layoutParams2;
            layoutParams2.gravity = 51;
            if (dyd.bp(26)) {
                epiVar.p.type = 2038;
            }
            WindowManager.LayoutParams layoutParams3 = epiVar.p;
            layoutParams3.x = i3 - (dimensionPixelSize2 / 2);
            layoutParams3.y = (epiVar.l.y - dimensionPixelSize3) - ((int) fso.al(epiVar.k, 16.0f));
            View inflate2 = LayoutInflater.from(epiVar).inflate(R.layout.window_font_measurer, (ViewGroup) null);
            epiVar.j = inflate2;
            inflate2.findViewById(R.id.close).setOnClickListener(new dt(epiVar, 0));
            EditText editText = (EditText) epiVar.j.findViewById(R.id.text);
            epiVar.f15938e = editText;
            editText.setOnClickListener(new dt(epiVar, 1));
            if (!dyd.bp(19)) {
                epiVar.m.addView(epiVar.j, epiVar.p);
            } else if (!epiVar.j.isAttachedToWindow()) {
                epiVar.m.addView(epiVar.j, epiVar.p);
            }
        }
        finish();
    }

    @Override // g.dms, androidx.fragment.app.u, androidx.activity.ComponentActivity, g.emf, android.app.Activity
    public final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.k = this;
        this.f9827d = new aco(1, this);
        Intent intent = new Intent(this, (Class<?>) b.class);
        this.f9828e = intent;
        startService(intent);
        bindService(this.f9828e, this.f9827d, 1);
    }

    @Override // g.fcd
    public final void onDenied(String str) {
        fyt.d(this.k, "android.permission.SYSTEM_ALERT_WINDOW");
        finish();
    }

    @Override // g.dms, g.ub, androidx.fragment.app.u, android.app.Activity
    public final void onDestroy() {
        epi epiVar = this.f9829f;
        if (epiVar != null && !epiVar.i) {
            aco acoVar = this.f9827d;
            if (acoVar != null) {
                unbindService(acoVar);
            }
            Intent intent = this.f9828e;
            if (intent != null) {
                stopService(intent);
            }
        }
        super.onDestroy();
    }
}
