package g;

import android.content.Intent;
import android.content.IntentFilter;
import android.text.TextUtils;
import android.view.View;
import cn.trinea.android.developertools.R;
import com.google.android.accessibility.selecttospeak.SelectToSpeakService;
import java.text.SimpleDateFormat;

/* loaded from: classes.dex */
public abstract class doq extends efx implements eha {
    public static final SimpleDateFormat ac = new SimpleDateFormat("yyyy-MM-dd HH-mm-ss SSS");
    public eas ad;
    public auj ae;
    public cgg af;
    public String ag;
    public eqi ah;
    public sr ai;

    public void _a() {
        if (dyd.aa()) {
            u();
        } else {
            fyt.h(this, new String[]{"android.permission.WRITE_EXTERNAL_STORAGE"}, 202);
        }
    }

    public void aa(String str) {
        String str2;
        x();
        View findViewById = findViewById(R.id.snackbar_layout);
        if (TextUtils.isEmpty(this.ag)) {
            str2 = this.ae.j;
        } else {
            str2 = this.ae.j + " " + this.ag.trim();
        }
        this.ar = afo.ar(findViewById, getString(R.string.save_to_path_success, str2, r()), -2, R.string.open, new anh(this, 6, str));
    }

    public abstract String ab();

    @Override // g.efx
    public void h(Intent intent) {
        super.h(intent);
        this.af = cro.aj(getIntent());
        this.ah = new eqi(this, 4);
        this.bg = SelectToSpeakService.class.getName();
        this.bc = b.a.d.class;
        this.ap = new aoi(13, this);
        this.am = false;
    }

    @Override // g.efx
    public final void initView() {
        super.initView();
        if (this instanceof b.b.c) {
            return;
        }
        this.ai = new sr(6, this);
        fzn.l(this).v(this.ai, new IntentFilter("c.t.d.p.sf"));
    }

    @Override // g.cms, g.dms, g.ub, androidx.fragment.app.u, android.app.Activity
    public final void onDestroy() {
        if (!(this instanceof b.b.c) && this.ai != null) {
            fzn.l(this.bb).u(this.ai);
            this.ai = null;
        }
        super.onDestroy();
    }

    @Override // g.dms, androidx.fragment.app.u, androidx.activity.ComponentActivity, android.app.Activity
    public final void onRequestPermissionsResult(int i, String[] strArr, int[] iArr) {
        super.onRequestPermissionsResult(i, strArr, iArr);
        if (i == 202) {
            if (iArr.length > 0 && iArr[0] == 0 && eyt.am(this, "android.permission.WRITE_EXTERNAL_STORAGE") == 0) {
                u();
            } else {
                fyt.f(this.bb);
            }
        }
    }

    public void q() {
    }

    public abstract String r();

    public void s() {
        this.aw = true;
        sd sdVar = this.ar;
        if (sdVar != null) {
            sdVar.ak(3);
            this.ar = null;
        }
        eas easVar = this.ad;
        if (easVar != null) {
            easVar.f13440g = false;
        }
        this.as.setVisibility(0);
        this.bd.setAlpha(0.1f);
        this.bd.setEnabled(false);
        this.az.setVisibility(0);
        this.ay.setText(R.string.saving);
        this.bj.setAlpha(0.1f);
        this.an.setEnabled(false);
    }

    public abstract void t();

    public abstract void u();

    public void w(Object obj) {
    }

    public void x() {
        eas easVar = this.ad;
        if (easVar != null) {
            easVar.f13440g = true;
        }
        this.as.setVisibility(8);
        this.az.setVisibility(8);
        this.bd.setAlpha(1.0f);
        this.bd.setEnabled(true);
        this.bj.setAlpha(1.0f);
        this.an.setEnabled(true);
        this.aw = false;
    }

    public void z(auj aujVar) {
    }
}
