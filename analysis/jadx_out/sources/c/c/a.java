package c.c;

import android.content.Context;
import android.os.Bundle;
import android.widget.CompoundButton;
import android.widget.TextView;
import androidx.appcompat.widget.SwitchCompat;
import cn.trinea.android.developertools.R;
import g.acw;
import g.cro;
import g.dms;
import g.dpa;

/* loaded from: classes.dex */
public class a extends dms implements CompoundButton.OnCheckedChangeListener {

    /* renamed from: d, reason: collision with root package name */
    public SwitchCompat f382d;

    /* renamed from: e, reason: collision with root package name */
    public SwitchCompat f383e;

    /* renamed from: f, reason: collision with root package name */
    public SwitchCompat f384f;

    /* renamed from: g, reason: collision with root package name */
    public a f385g;
    public TextView h;

    @Override // android.widget.CompoundButton.OnCheckedChangeListener
    public final void onCheckedChanged(CompoundButton compoundButton, boolean z) {
        int id = compoundButton.getId();
        if (id != this.f382d.getId()) {
            if (id == this.f383e.getId()) {
                cro.af((Context) dpa.h(this.f385g).f14569g, "ad_auto_identify", z);
                return;
            } else {
                if (id == this.f384f.getId()) {
                    cro.af((Context) dpa.h(this.f385g).f14569g, "ad_show_skipped_tips", z);
                    return;
                }
                return;
            }
        }
        dpa h = dpa.h(this.f385g);
        if (((Boolean) h.f14566d) == null) {
            h.f14566d = Boolean.valueOf(h.n());
        }
        if (z == ((Boolean) h.f14566d).booleanValue()) {
            return;
        }
        h.f14566d = Boolean.valueOf(z);
        cro.af((Context) h.f14569g, "ad_auto_skip", z);
    }

    @Override // g.dms, androidx.fragment.app.u, androidx.activity.ComponentActivity, g.emf, android.app.Activity
    public final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R.layout.activity_ad_skip);
        this.f385g = this;
        this.h = (TextView) findViewById(R.id.ad_info_tv);
        SwitchCompat switchCompat = (SwitchCompat) findViewById(R.id.auto_skip);
        this.f382d = switchCompat;
        switchCompat.setChecked(dpa.h(this.f385g).n());
        this.f382d.setOnCheckedChangeListener(this);
        SwitchCompat switchCompat2 = (SwitchCompat) findViewById(R.id.auto_identify);
        this.f383e = switchCompat2;
        switchCompat2.setChecked(cro.an((Context) dpa.h(this.f385g).f14569g, "ad_auto_identify", true));
        this.f383e.setOnCheckedChangeListener(this);
        SwitchCompat switchCompat3 = (SwitchCompat) findViewById(R.id.show_skiped_tips);
        this.f384f = switchCompat3;
        switchCompat3.setChecked(cro.an((Context) dpa.h(this.f385g).f14569g, "ad_show_skipped_tips", true));
        this.f384f.setOnCheckedChangeListener(this);
    }

    @Override // g.dms, androidx.fragment.app.u, android.app.Activity
    public final void onResume() {
        String string;
        super.onResume();
        Long k = acw.k(this.f385g, "ad_skip_count", 0L);
        long longValue = k.longValue() * 3;
        if (longValue >= 86400) {
            Object valueOf = Long.valueOf(longValue / 86400);
            long j = longValue % 86400;
            string = getString(R.string.day_hour_minute, valueOf, Long.valueOf(j / 3600), Long.valueOf((j % 3600) / 60));
        } else {
            string = longValue >= 3600 ? getString(R.string.hour_minute, Long.valueOf(longValue / 3600), Long.valueOf((longValue % 3600) / 60)) : longValue >= 60 ? getString(R.string.minute_second, Long.valueOf(longValue / 60), Long.valueOf(longValue % 60)) : getString(R.string.second, Long.valueOf(longValue));
        }
        this.h.setText(getString(R.string.ad_info, k, string));
    }
}
