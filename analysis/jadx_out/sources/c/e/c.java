package c.e;

import android.os.Bundle;
import android.widget.CompoundButton;
import androidx.appcompat.widget.SwitchCompat;
import cn.trinea.android.developertools.R;
import g.cms;
import g.cro;
import g.fml;

/* loaded from: classes.dex */
public class c extends cms {

    /* renamed from: d, reason: collision with root package name */
    public c f395d;

    @Override // g.cms, g.dms, androidx.fragment.app.u, androidx.activity.ComponentActivity, g.emf, android.app.Activity
    public final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R.layout.activity_setting_record_activity);
        this.f395d = this;
        SwitchCompat switchCompat = (SwitchCompat) findViewById(R.id.wv_small_window_default_switch);
        c cVar = this.f395d;
        String str = c.a.a.f374d;
        final int i = 1;
        switchCompat.setChecked(cro.an(cVar, "wv_small_window_default", true));
        switchCompat.setOnCheckedChangeListener(new CompoundButton.OnCheckedChangeListener(this) { // from class: g.ard

            /* renamed from: b, reason: collision with root package name */
            public final /* synthetic */ c.e.c f10698b;

            {
                this.f10698b = this;
            }

            @Override // android.widget.CompoundButton.OnCheckedChangeListener
            public final void onCheckedChanged(CompoundButton compoundButton, boolean z) {
                switch (i) {
                    case 0:
                        cro.af(this.f10698b.f395d, "wv_show_time", z);
                        break;
                    case 1:
                        cro.af(this.f10698b.f395d, "wv_small_window_default", z);
                        break;
                    case 2:
                        cro.af(this.f10698b.f395d, "wv_show_name", z);
                        break;
                    case 3:
                        cro.af(this.f10698b.f395d, "wv_show_title", z);
                        break;
                    default:
                        cro.af(this.f10698b.f395d, "wv_show_icon", z);
                        break;
                }
            }
        });
        cro.ax(switchCompat);
        SwitchCompat switchCompat2 = (SwitchCompat) findViewById(R.id.wv_show_icon_switch);
        switchCompat2.setChecked(cro.an(this.f395d, "wv_show_icon", true));
        final int i2 = 4;
        switchCompat2.setOnCheckedChangeListener(new CompoundButton.OnCheckedChangeListener(this) { // from class: g.ard

            /* renamed from: b, reason: collision with root package name */
            public final /* synthetic */ c.e.c f10698b;

            {
                this.f10698b = this;
            }

            @Override // android.widget.CompoundButton.OnCheckedChangeListener
            public final void onCheckedChanged(CompoundButton compoundButton, boolean z) {
                switch (i2) {
                    case 0:
                        cro.af(this.f10698b.f395d, "wv_show_time", z);
                        break;
                    case 1:
                        cro.af(this.f10698b.f395d, "wv_small_window_default", z);
                        break;
                    case 2:
                        cro.af(this.f10698b.f395d, "wv_show_name", z);
                        break;
                    case 3:
                        cro.af(this.f10698b.f395d, "wv_show_title", z);
                        break;
                    default:
                        cro.af(this.f10698b.f395d, "wv_show_icon", z);
                        break;
                }
            }
        });
        cro.ax(switchCompat2);
        SwitchCompat switchCompat3 = (SwitchCompat) findViewById(R.id.wv_show_name_switch);
        switchCompat3.setChecked(cro.an(this.f395d, "wv_show_name", true));
        final int i3 = 2;
        switchCompat3.setOnCheckedChangeListener(new CompoundButton.OnCheckedChangeListener(this) { // from class: g.ard

            /* renamed from: b, reason: collision with root package name */
            public final /* synthetic */ c.e.c f10698b;

            {
                this.f10698b = this;
            }

            @Override // android.widget.CompoundButton.OnCheckedChangeListener
            public final void onCheckedChanged(CompoundButton compoundButton, boolean z) {
                switch (i3) {
                    case 0:
                        cro.af(this.f10698b.f395d, "wv_show_time", z);
                        break;
                    case 1:
                        cro.af(this.f10698b.f395d, "wv_small_window_default", z);
                        break;
                    case 2:
                        cro.af(this.f10698b.f395d, "wv_show_name", z);
                        break;
                    case 3:
                        cro.af(this.f10698b.f395d, "wv_show_title", z);
                        break;
                    default:
                        cro.af(this.f10698b.f395d, "wv_show_icon", z);
                        break;
                }
            }
        });
        cro.ax(switchCompat3);
        SwitchCompat switchCompat4 = (SwitchCompat) findViewById(R.id.wv_show_title_switch);
        switchCompat4.setChecked(cro.an(this.f395d, "wv_show_title", true));
        final int i4 = 3;
        switchCompat4.setOnCheckedChangeListener(new CompoundButton.OnCheckedChangeListener(this) { // from class: g.ard

            /* renamed from: b, reason: collision with root package name */
            public final /* synthetic */ c.e.c f10698b;

            {
                this.f10698b = this;
            }

            @Override // android.widget.CompoundButton.OnCheckedChangeListener
            public final void onCheckedChanged(CompoundButton compoundButton, boolean z) {
                switch (i4) {
                    case 0:
                        cro.af(this.f10698b.f395d, "wv_show_time", z);
                        break;
                    case 1:
                        cro.af(this.f10698b.f395d, "wv_small_window_default", z);
                        break;
                    case 2:
                        cro.af(this.f10698b.f395d, "wv_show_name", z);
                        break;
                    case 3:
                        cro.af(this.f10698b.f395d, "wv_show_title", z);
                        break;
                    default:
                        cro.af(this.f10698b.f395d, "wv_show_icon", z);
                        break;
                }
            }
        });
        cro.ax(switchCompat4);
        SwitchCompat switchCompat5 = (SwitchCompat) findViewById(R.id.wv_show_time_switch);
        switchCompat5.setChecked(cro.an(this.f395d, "wv_show_time", true));
        final int i5 = 0;
        switchCompat5.setOnCheckedChangeListener(new CompoundButton.OnCheckedChangeListener(this) { // from class: g.ard

            /* renamed from: b, reason: collision with root package name */
            public final /* synthetic */ c.e.c f10698b;

            {
                this.f10698b = this;
            }

            @Override // android.widget.CompoundButton.OnCheckedChangeListener
            public final void onCheckedChanged(CompoundButton compoundButton, boolean z) {
                switch (i5) {
                    case 0:
                        cro.af(this.f10698b.f395d, "wv_show_time", z);
                        break;
                    case 1:
                        cro.af(this.f10698b.f395d, "wv_small_window_default", z);
                        break;
                    case 2:
                        cro.af(this.f10698b.f395d, "wv_show_name", z);
                        break;
                    case 3:
                        cro.af(this.f10698b.f395d, "wv_show_title", z);
                        break;
                    default:
                        cro.af(this.f10698b.f395d, "wv_show_icon", z);
                        break;
                }
            }
        });
        cro.ax(switchCompat5);
        if (fml.e(this.f395d)) {
            bannerAdInit(null, fml.c(this));
            bannerAdShow();
        }
    }
}
