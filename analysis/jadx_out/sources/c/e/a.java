package c.e;

import android.content.ComponentName;
import android.content.Intent;
import android.content.pm.ServiceInfo;
import android.os.Build;
import android.os.Bundle;
import android.util.Log;
import android.view.View;
import android.widget.CompoundButton;
import android.widget.TextView;
import androidx.appcompat.widget.SwitchCompat;
import cn.trinea.android.developertools.R;
import g.awy;
import g.bus;
import g.byh;
import g.cro;
import g.efx;
import g.erp;
import g.fml;
import java.util.ArrayList;

/* loaded from: classes.dex */
public class a extends awy implements erp {

    /* renamed from: d, reason: collision with root package name */
    public static final /* synthetic */ int f387d = 0;

    /* renamed from: e, reason: collision with root package name */
    public SwitchCompat f388e;

    /* renamed from: f, reason: collision with root package name */
    public SwitchCompat f389f;

    /* renamed from: g, reason: collision with root package name */
    public SwitchCompat f390g;
    public TextView h;
    public TextView i;
    public SwitchCompat j;
    public SwitchCompat k;
    public View l;
    public SwitchCompat m;

    public final void n() {
        TextView textView = (TextView) findViewById(R.id.debug_access_method_title);
        if (textView != null) {
            String string = getString(R.string.debug_access_method);
            int i = bus.f12241a;
            cro.ar(textView, string, getString(getSharedPreferences("TrineaAndroidCommon", 0).getBoolean("shizuku_compatibility_mode_enabled", false) ? R.string.debug_access_choice_shizuku : R.string.debug_access_choice_accessibility));
        }
    }

    public final void o() {
        String string = getString(cro.an(this.p, "applist_grid_mode", true) ? R.string.list_layout_mode_grid : R.string.list_layout_mode_list);
        this.i.setText(string);
        this.l.setContentDescription(getString(R.string.setting_value_content_description, this.h.getText(), string));
    }

    @Override // g.awy, g.cms, g.dms, androidx.fragment.app.u, androidx.activity.ComponentActivity, g.emf, android.app.Activity
    public final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        final int i = 3;
        findViewById(R.id.about_group).setOnClickListener(new View.OnClickListener(this) { // from class: g.rg

            /* renamed from: b, reason: collision with root package name */
            public final /* synthetic */ c.e.a f19899b;

            {
                this.f19899b = this;
            }

            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                int i2 = i;
                c.e.a aVar = this.f19899b;
                switch (i2) {
                    case 0:
                        int i3 = c.e.a.f387d;
                        try {
                            ArrayList bm = baf.bm(aVar);
                            CharSequence[] charSequenceArr = new CharSequence[bm.size()];
                            boolean[] zArr = new boolean[bm.size()];
                            for (int i4 = 0; i4 < bm.size(); i4++) {
                                charSequenceArr[i4] = ((ServiceInfo) bm.get(i4)).loadLabel(aVar.getPackageManager());
                                ServiceInfo serviceInfo = (ServiceInfo) bm.get(i4);
                                int componentEnabledSetting = aVar.getPackageManager().getComponentEnabledSetting(new ComponentName(aVar, serviceInfo.name));
                                zArr[i4] = componentEnabledSetting == 0 ? serviceInfo.enabled : componentEnabledSetting == 1;
                            }
                            gmn z = ckd.z(aVar);
                            z.p(R.string.quick_settings_tiles);
                            gnt gntVar = new gnt(aVar, bm, zArr);
                            die dieVar = (die) z.z;
                            dieVar.o = charSequenceArr;
                            dieVar.f14219d = gntVar;
                            dieVar.j = zArr;
                            dieVar.k = true;
                            z.s(android.R.string.ok, null);
                            z.ak();
                            break;
                        } catch (RuntimeException e2) {
                            Log.e("SettingActivity", "Cannot update quick settings tiles", e2);
                            gm.f(aVar, R.string.quick_settings_tiles_update_failed);
                            return;
                        }
                    case 1:
                        int i5 = c.e.a.f387d;
                        aVar.startActivity(new Intent(aVar.p, (Class<?>) c.e.b.class));
                        break;
                    case 2:
                        int i6 = c.e.a.f387d;
                        aVar.startActivity(new Intent(aVar.p, (Class<?>) c.e.c.class));
                        break;
                    case 3:
                        int i7 = c.e.a.f387d;
                        aVar.r();
                        break;
                    case 4:
                        int i8 = c.e.a.f387d;
                        String[] strArr = {aVar.getString(R.string.list_layout_mode_list), aVar.getString(R.string.list_layout_mode_grid)};
                        awy awyVar = aVar.p;
                        int i9 = efx.aj;
                        boolean an = cro.an(awyVar, "applist_grid_mode", true);
                        gmn z2 = ckd.z(aVar);
                        z2.p(R.string.list_layout_mode);
                        aip aipVar = new aip(2, aVar);
                        die dieVar2 = (die) z2.z;
                        dieVar2.o = strArr;
                        dieVar2.y = aipVar;
                        dieVar2.w = an ? 1 : 0;
                        dieVar2.l = true;
                        z2.ak();
                        break;
                    case 5:
                        int i10 = c.e.a.f387d;
                        aVar.getClass();
                        int i11 = yb.f20327a;
                        Bundle bundle2 = new Bundle();
                        bundle2.putBoolean("settings", true);
                        yb.i(aVar, bundle2);
                        break;
                    default:
                        int i12 = c.e.a.f387d;
                        int i13 = bus.f12241a;
                        bus.s(aVar, new Bundle());
                        break;
                }
            }
        });
        this.l = findViewById(R.id.app_list_layout_mode_row);
        this.h = (TextView) findViewById(R.id.app_list_layout_mode_tv);
        this.i = (TextView) findViewById(R.id.app_list_layout_mode_value);
        o();
        final int i2 = 4;
        this.l.setOnClickListener(new View.OnClickListener(this) { // from class: g.rg

            /* renamed from: b, reason: collision with root package name */
            public final /* synthetic */ c.e.a f19899b;

            {
                this.f19899b = this;
            }

            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                int i22 = i2;
                c.e.a aVar = this.f19899b;
                switch (i22) {
                    case 0:
                        int i3 = c.e.a.f387d;
                        try {
                            ArrayList bm = baf.bm(aVar);
                            CharSequence[] charSequenceArr = new CharSequence[bm.size()];
                            boolean[] zArr = new boolean[bm.size()];
                            for (int i4 = 0; i4 < bm.size(); i4++) {
                                charSequenceArr[i4] = ((ServiceInfo) bm.get(i4)).loadLabel(aVar.getPackageManager());
                                ServiceInfo serviceInfo = (ServiceInfo) bm.get(i4);
                                int componentEnabledSetting = aVar.getPackageManager().getComponentEnabledSetting(new ComponentName(aVar, serviceInfo.name));
                                zArr[i4] = componentEnabledSetting == 0 ? serviceInfo.enabled : componentEnabledSetting == 1;
                            }
                            gmn z = ckd.z(aVar);
                            z.p(R.string.quick_settings_tiles);
                            gnt gntVar = new gnt(aVar, bm, zArr);
                            die dieVar = (die) z.z;
                            dieVar.o = charSequenceArr;
                            dieVar.f14219d = gntVar;
                            dieVar.j = zArr;
                            dieVar.k = true;
                            z.s(android.R.string.ok, null);
                            z.ak();
                            break;
                        } catch (RuntimeException e2) {
                            Log.e("SettingActivity", "Cannot update quick settings tiles", e2);
                            gm.f(aVar, R.string.quick_settings_tiles_update_failed);
                            return;
                        }
                    case 1:
                        int i5 = c.e.a.f387d;
                        aVar.startActivity(new Intent(aVar.p, (Class<?>) c.e.b.class));
                        break;
                    case 2:
                        int i6 = c.e.a.f387d;
                        aVar.startActivity(new Intent(aVar.p, (Class<?>) c.e.c.class));
                        break;
                    case 3:
                        int i7 = c.e.a.f387d;
                        aVar.r();
                        break;
                    case 4:
                        int i8 = c.e.a.f387d;
                        String[] strArr = {aVar.getString(R.string.list_layout_mode_list), aVar.getString(R.string.list_layout_mode_grid)};
                        awy awyVar = aVar.p;
                        int i9 = efx.aj;
                        boolean an = cro.an(awyVar, "applist_grid_mode", true);
                        gmn z2 = ckd.z(aVar);
                        z2.p(R.string.list_layout_mode);
                        aip aipVar = new aip(2, aVar);
                        die dieVar2 = (die) z2.z;
                        dieVar2.o = strArr;
                        dieVar2.y = aipVar;
                        dieVar2.w = an ? 1 : 0;
                        dieVar2.l = true;
                        z2.ak();
                        break;
                    case 5:
                        int i10 = c.e.a.f387d;
                        aVar.getClass();
                        int i11 = yb.f20327a;
                        Bundle bundle2 = new Bundle();
                        bundle2.putBoolean("settings", true);
                        yb.i(aVar, bundle2);
                        break;
                    default:
                        int i12 = c.e.a.f387d;
                        int i13 = bus.f12241a;
                        bus.s(aVar, new Bundle());
                        break;
                }
            }
        });
        SwitchCompat switchCompat = (SwitchCompat) findViewById(R.id.app_list_show_system_app_switch);
        this.j = switchCompat;
        switchCompat.setChecked(efx.bk(this.p));
        final int i3 = 1;
        this.j.setOnCheckedChangeListener(new CompoundButton.OnCheckedChangeListener(this) { // from class: g.cus

            /* renamed from: b, reason: collision with root package name */
            public final /* synthetic */ c.e.a f13554b;

            {
                this.f13554b = this;
            }

            @Override // android.widget.CompoundButton.OnCheckedChangeListener
            public final void onCheckedChanged(CompoundButton compoundButton, boolean z) {
                int i4 = i3;
                c.e.a aVar = this.f13554b;
                switch (i4) {
                    case 0:
                        int i5 = c.e.a.f387d;
                        cro.af(aVar.p, "text_copy_ow_auto_hide", z);
                        awy awyVar = aVar.p;
                        Intent intent = new Intent("c.t.d.s.c");
                        intent.putExtra("auto_hide_changed", true);
                        fzn.l(awyVar).q(intent);
                        break;
                    case 1:
                        int i6 = c.e.a.f387d;
                        byh.ad(aVar.p, "applist_show_system_app", z);
                        break;
                    case 2:
                        int i7 = c.e.a.f387d;
                        cro.az(aVar.p, z ? 1 : 0, "applist_show_recently");
                        break;
                    case 3:
                        int i8 = c.e.a.f387d;
                        cro.af(aVar.p, "layout_inspector_ow_auto_hide", z);
                        awy awyVar2 = aVar.p;
                        Intent intent2 = new Intent("c.t.d.s.c");
                        intent2.putExtra("auto_hide_changed", true);
                        fzn.l(awyVar2).q(intent2);
                        break;
                    case 4:
                        int i9 = c.e.a.f387d;
                        byh.ad(aVar.p, "d_skip_well_known_lib", z);
                        break;
                    default:
                        int i10 = c.e.a.f387d;
                        byh.ad(aVar.p, "decompile_allow_media_scan", z);
                        dha.a(aVar.p);
                        break;
                }
            }
        });
        SwitchCompat switchCompat2 = (SwitchCompat) findViewById(R.id.app_list_show_recently_switch);
        this.m = switchCompat2;
        switchCompat2.setChecked(cro.av(this.p, -1, "applist_show_recently") == 1);
        final int i4 = 2;
        this.m.setOnCheckedChangeListener(new CompoundButton.OnCheckedChangeListener(this) { // from class: g.cus

            /* renamed from: b, reason: collision with root package name */
            public final /* synthetic */ c.e.a f13554b;

            {
                this.f13554b = this;
            }

            @Override // android.widget.CompoundButton.OnCheckedChangeListener
            public final void onCheckedChanged(CompoundButton compoundButton, boolean z) {
                int i42 = i4;
                c.e.a aVar = this.f13554b;
                switch (i42) {
                    case 0:
                        int i5 = c.e.a.f387d;
                        cro.af(aVar.p, "text_copy_ow_auto_hide", z);
                        awy awyVar = aVar.p;
                        Intent intent = new Intent("c.t.d.s.c");
                        intent.putExtra("auto_hide_changed", true);
                        fzn.l(awyVar).q(intent);
                        break;
                    case 1:
                        int i6 = c.e.a.f387d;
                        byh.ad(aVar.p, "applist_show_system_app", z);
                        break;
                    case 2:
                        int i7 = c.e.a.f387d;
                        cro.az(aVar.p, z ? 1 : 0, "applist_show_recently");
                        break;
                    case 3:
                        int i8 = c.e.a.f387d;
                        cro.af(aVar.p, "layout_inspector_ow_auto_hide", z);
                        awy awyVar2 = aVar.p;
                        Intent intent2 = new Intent("c.t.d.s.c");
                        intent2.putExtra("auto_hide_changed", true);
                        fzn.l(awyVar2).q(intent2);
                        break;
                    case 4:
                        int i9 = c.e.a.f387d;
                        byh.ad(aVar.p, "d_skip_well_known_lib", z);
                        break;
                    default:
                        int i10 = c.e.a.f387d;
                        byh.ad(aVar.p, "decompile_allow_media_scan", z);
                        dha.a(aVar.p);
                        break;
                }
            }
        });
        View findViewById = findViewById(R.id.quick_settings_tiles_row);
        if (Build.VERSION.SDK_INT < 24) {
            findViewById.setVisibility(8);
        } else {
            final int i5 = 0;
            findViewById.setOnClickListener(new View.OnClickListener(this) { // from class: g.rg

                /* renamed from: b, reason: collision with root package name */
                public final /* synthetic */ c.e.a f19899b;

                {
                    this.f19899b = this;
                }

                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    int i22 = i5;
                    c.e.a aVar = this.f19899b;
                    switch (i22) {
                        case 0:
                            int i32 = c.e.a.f387d;
                            try {
                                ArrayList bm = baf.bm(aVar);
                                CharSequence[] charSequenceArr = new CharSequence[bm.size()];
                                boolean[] zArr = new boolean[bm.size()];
                                for (int i42 = 0; i42 < bm.size(); i42++) {
                                    charSequenceArr[i42] = ((ServiceInfo) bm.get(i42)).loadLabel(aVar.getPackageManager());
                                    ServiceInfo serviceInfo = (ServiceInfo) bm.get(i42);
                                    int componentEnabledSetting = aVar.getPackageManager().getComponentEnabledSetting(new ComponentName(aVar, serviceInfo.name));
                                    zArr[i42] = componentEnabledSetting == 0 ? serviceInfo.enabled : componentEnabledSetting == 1;
                                }
                                gmn z = ckd.z(aVar);
                                z.p(R.string.quick_settings_tiles);
                                gnt gntVar = new gnt(aVar, bm, zArr);
                                die dieVar = (die) z.z;
                                dieVar.o = charSequenceArr;
                                dieVar.f14219d = gntVar;
                                dieVar.j = zArr;
                                dieVar.k = true;
                                z.s(android.R.string.ok, null);
                                z.ak();
                                break;
                            } catch (RuntimeException e2) {
                                Log.e("SettingActivity", "Cannot update quick settings tiles", e2);
                                gm.f(aVar, R.string.quick_settings_tiles_update_failed);
                                return;
                            }
                        case 1:
                            int i52 = c.e.a.f387d;
                            aVar.startActivity(new Intent(aVar.p, (Class<?>) c.e.b.class));
                            break;
                        case 2:
                            int i6 = c.e.a.f387d;
                            aVar.startActivity(new Intent(aVar.p, (Class<?>) c.e.c.class));
                            break;
                        case 3:
                            int i7 = c.e.a.f387d;
                            aVar.r();
                            break;
                        case 4:
                            int i8 = c.e.a.f387d;
                            String[] strArr = {aVar.getString(R.string.list_layout_mode_list), aVar.getString(R.string.list_layout_mode_grid)};
                            awy awyVar = aVar.p;
                            int i9 = efx.aj;
                            boolean an = cro.an(awyVar, "applist_grid_mode", true);
                            gmn z2 = ckd.z(aVar);
                            z2.p(R.string.list_layout_mode);
                            aip aipVar = new aip(2, aVar);
                            die dieVar2 = (die) z2.z;
                            dieVar2.o = strArr;
                            dieVar2.y = aipVar;
                            dieVar2.w = an ? 1 : 0;
                            dieVar2.l = true;
                            z2.ak();
                            break;
                        case 5:
                            int i10 = c.e.a.f387d;
                            aVar.getClass();
                            int i11 = yb.f20327a;
                            Bundle bundle2 = new Bundle();
                            bundle2.putBoolean("settings", true);
                            yb.i(aVar, bundle2);
                            break;
                        default:
                            int i12 = c.e.a.f387d;
                            int i13 = bus.f12241a;
                            bus.s(aVar, new Bundle());
                            break;
                    }
                }
            });
        }
        if (cro.an(this.p, "setting_sns", true)) {
            findViewById(R.id.record_activity_group).setVisibility(8);
            findViewById(R.id.view_layout_group).setVisibility(8);
            findViewById(R.id.decompile_group).setVisibility(8);
            findViewById(R.id.text_copy_group).setVisibility(8);
        }
        SwitchCompat switchCompat3 = (SwitchCompat) findViewById(R.id.view_layout_auto_hide_switch);
        this.f389f = switchCompat3;
        switchCompat3.setChecked(cro.an(this.p, "layout_inspector_ow_auto_hide", true));
        final int i6 = 3;
        this.f389f.setOnCheckedChangeListener(new CompoundButton.OnCheckedChangeListener(this) { // from class: g.cus

            /* renamed from: b, reason: collision with root package name */
            public final /* synthetic */ c.e.a f13554b;

            {
                this.f13554b = this;
            }

            @Override // android.widget.CompoundButton.OnCheckedChangeListener
            public final void onCheckedChanged(CompoundButton compoundButton, boolean z) {
                int i42 = i6;
                c.e.a aVar = this.f13554b;
                switch (i42) {
                    case 0:
                        int i52 = c.e.a.f387d;
                        cro.af(aVar.p, "text_copy_ow_auto_hide", z);
                        awy awyVar = aVar.p;
                        Intent intent = new Intent("c.t.d.s.c");
                        intent.putExtra("auto_hide_changed", true);
                        fzn.l(awyVar).q(intent);
                        break;
                    case 1:
                        int i62 = c.e.a.f387d;
                        byh.ad(aVar.p, "applist_show_system_app", z);
                        break;
                    case 2:
                        int i7 = c.e.a.f387d;
                        cro.az(aVar.p, z ? 1 : 0, "applist_show_recently");
                        break;
                    case 3:
                        int i8 = c.e.a.f387d;
                        cro.af(aVar.p, "layout_inspector_ow_auto_hide", z);
                        awy awyVar2 = aVar.p;
                        Intent intent2 = new Intent("c.t.d.s.c");
                        intent2.putExtra("auto_hide_changed", true);
                        fzn.l(awyVar2).q(intent2);
                        break;
                    case 4:
                        int i9 = c.e.a.f387d;
                        byh.ad(aVar.p, "d_skip_well_known_lib", z);
                        break;
                    default:
                        int i10 = c.e.a.f387d;
                        byh.ad(aVar.p, "decompile_allow_media_scan", z);
                        dha.a(aVar.p);
                        break;
                }
            }
        });
        SwitchCompat switchCompat4 = (SwitchCompat) findViewById(R.id.decompile_skip_well_known_lib_switch);
        this.f388e = switchCompat4;
        switchCompat4.setChecked(byh.r(this.p, "d_skip_well_known_lib", true));
        final int i7 = 4;
        this.f388e.setOnCheckedChangeListener(new CompoundButton.OnCheckedChangeListener(this) { // from class: g.cus

            /* renamed from: b, reason: collision with root package name */
            public final /* synthetic */ c.e.a f13554b;

            {
                this.f13554b = this;
            }

            @Override // android.widget.CompoundButton.OnCheckedChangeListener
            public final void onCheckedChanged(CompoundButton compoundButton, boolean z) {
                int i42 = i7;
                c.e.a aVar = this.f13554b;
                switch (i42) {
                    case 0:
                        int i52 = c.e.a.f387d;
                        cro.af(aVar.p, "text_copy_ow_auto_hide", z);
                        awy awyVar = aVar.p;
                        Intent intent = new Intent("c.t.d.s.c");
                        intent.putExtra("auto_hide_changed", true);
                        fzn.l(awyVar).q(intent);
                        break;
                    case 1:
                        int i62 = c.e.a.f387d;
                        byh.ad(aVar.p, "applist_show_system_app", z);
                        break;
                    case 2:
                        int i72 = c.e.a.f387d;
                        cro.az(aVar.p, z ? 1 : 0, "applist_show_recently");
                        break;
                    case 3:
                        int i8 = c.e.a.f387d;
                        cro.af(aVar.p, "layout_inspector_ow_auto_hide", z);
                        awy awyVar2 = aVar.p;
                        Intent intent2 = new Intent("c.t.d.s.c");
                        intent2.putExtra("auto_hide_changed", true);
                        fzn.l(awyVar2).q(intent2);
                        break;
                    case 4:
                        int i9 = c.e.a.f387d;
                        byh.ad(aVar.p, "d_skip_well_known_lib", z);
                        break;
                    default:
                        int i10 = c.e.a.f387d;
                        byh.ad(aVar.p, "decompile_allow_media_scan", z);
                        dha.a(aVar.p);
                        break;
                }
            }
        });
        SwitchCompat switchCompat5 = (SwitchCompat) findViewById(R.id.decompile_allow_media_scan_switch);
        this.k = switchCompat5;
        cro.ar(switchCompat5, switchCompat5.getText().toString().split("\\n", 2)[0], switchCompat5.getContext().getString(R.string.decompile_allow_media_scan_summary));
        switchCompat5.setSwitchPadding(switchCompat5.getResources().getDimensionPixelSize(R.dimen.dp_16));
        cro.ax(switchCompat5);
        this.k.setChecked(byh.r(this.p, "decompile_allow_media_scan", false));
        final int i8 = 5;
        this.k.setOnCheckedChangeListener(new CompoundButton.OnCheckedChangeListener(this) { // from class: g.cus

            /* renamed from: b, reason: collision with root package name */
            public final /* synthetic */ c.e.a f13554b;

            {
                this.f13554b = this;
            }

            @Override // android.widget.CompoundButton.OnCheckedChangeListener
            public final void onCheckedChanged(CompoundButton compoundButton, boolean z) {
                int i42 = i8;
                c.e.a aVar = this.f13554b;
                switch (i42) {
                    case 0:
                        int i52 = c.e.a.f387d;
                        cro.af(aVar.p, "text_copy_ow_auto_hide", z);
                        awy awyVar = aVar.p;
                        Intent intent = new Intent("c.t.d.s.c");
                        intent.putExtra("auto_hide_changed", true);
                        fzn.l(awyVar).q(intent);
                        break;
                    case 1:
                        int i62 = c.e.a.f387d;
                        byh.ad(aVar.p, "applist_show_system_app", z);
                        break;
                    case 2:
                        int i72 = c.e.a.f387d;
                        cro.az(aVar.p, z ? 1 : 0, "applist_show_recently");
                        break;
                    case 3:
                        int i82 = c.e.a.f387d;
                        cro.af(aVar.p, "layout_inspector_ow_auto_hide", z);
                        awy awyVar2 = aVar.p;
                        Intent intent2 = new Intent("c.t.d.s.c");
                        intent2.putExtra("auto_hide_changed", true);
                        fzn.l(awyVar2).q(intent2);
                        break;
                    case 4:
                        int i9 = c.e.a.f387d;
                        byh.ad(aVar.p, "d_skip_well_known_lib", z);
                        break;
                    default:
                        int i10 = c.e.a.f387d;
                        byh.ad(aVar.p, "decompile_allow_media_scan", z);
                        dha.a(aVar.p);
                        break;
                }
            }
        });
        SwitchCompat switchCompat6 = (SwitchCompat) findViewById(R.id.text_copy_auto_hide_switch);
        this.f390g = switchCompat6;
        switchCompat6.setChecked(cro.an(this.p, "text_copy_ow_auto_hide", true));
        final int i9 = 0;
        this.f390g.setOnCheckedChangeListener(new CompoundButton.OnCheckedChangeListener(this) { // from class: g.cus

            /* renamed from: b, reason: collision with root package name */
            public final /* synthetic */ c.e.a f13554b;

            {
                this.f13554b = this;
            }

            @Override // android.widget.CompoundButton.OnCheckedChangeListener
            public final void onCheckedChanged(CompoundButton compoundButton, boolean z) {
                int i42 = i9;
                c.e.a aVar = this.f13554b;
                switch (i42) {
                    case 0:
                        int i52 = c.e.a.f387d;
                        cro.af(aVar.p, "text_copy_ow_auto_hide", z);
                        awy awyVar = aVar.p;
                        Intent intent = new Intent("c.t.d.s.c");
                        intent.putExtra("auto_hide_changed", true);
                        fzn.l(awyVar).q(intent);
                        break;
                    case 1:
                        int i62 = c.e.a.f387d;
                        byh.ad(aVar.p, "applist_show_system_app", z);
                        break;
                    case 2:
                        int i72 = c.e.a.f387d;
                        cro.az(aVar.p, z ? 1 : 0, "applist_show_recently");
                        break;
                    case 3:
                        int i82 = c.e.a.f387d;
                        cro.af(aVar.p, "layout_inspector_ow_auto_hide", z);
                        awy awyVar2 = aVar.p;
                        Intent intent2 = new Intent("c.t.d.s.c");
                        intent2.putExtra("auto_hide_changed", true);
                        fzn.l(awyVar2).q(intent2);
                        break;
                    case 4:
                        int i92 = c.e.a.f387d;
                        byh.ad(aVar.p, "d_skip_well_known_lib", z);
                        break;
                    default:
                        int i10 = c.e.a.f387d;
                        byh.ad(aVar.p, "decompile_allow_media_scan", z);
                        dha.a(aVar.p);
                        break;
                }
            }
        });
        n();
        final int i10 = 5;
        findViewById(R.id.debug_access_method_row).setOnClickListener(new View.OnClickListener(this) { // from class: g.rg

            /* renamed from: b, reason: collision with root package name */
            public final /* synthetic */ c.e.a f19899b;

            {
                this.f19899b = this;
            }

            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                int i22 = i10;
                c.e.a aVar = this.f19899b;
                switch (i22) {
                    case 0:
                        int i32 = c.e.a.f387d;
                        try {
                            ArrayList bm = baf.bm(aVar);
                            CharSequence[] charSequenceArr = new CharSequence[bm.size()];
                            boolean[] zArr = new boolean[bm.size()];
                            for (int i42 = 0; i42 < bm.size(); i42++) {
                                charSequenceArr[i42] = ((ServiceInfo) bm.get(i42)).loadLabel(aVar.getPackageManager());
                                ServiceInfo serviceInfo = (ServiceInfo) bm.get(i42);
                                int componentEnabledSetting = aVar.getPackageManager().getComponentEnabledSetting(new ComponentName(aVar, serviceInfo.name));
                                zArr[i42] = componentEnabledSetting == 0 ? serviceInfo.enabled : componentEnabledSetting == 1;
                            }
                            gmn z = ckd.z(aVar);
                            z.p(R.string.quick_settings_tiles);
                            gnt gntVar = new gnt(aVar, bm, zArr);
                            die dieVar = (die) z.z;
                            dieVar.o = charSequenceArr;
                            dieVar.f14219d = gntVar;
                            dieVar.j = zArr;
                            dieVar.k = true;
                            z.s(android.R.string.ok, null);
                            z.ak();
                            break;
                        } catch (RuntimeException e2) {
                            Log.e("SettingActivity", "Cannot update quick settings tiles", e2);
                            gm.f(aVar, R.string.quick_settings_tiles_update_failed);
                            return;
                        }
                    case 1:
                        int i52 = c.e.a.f387d;
                        aVar.startActivity(new Intent(aVar.p, (Class<?>) c.e.b.class));
                        break;
                    case 2:
                        int i62 = c.e.a.f387d;
                        aVar.startActivity(new Intent(aVar.p, (Class<?>) c.e.c.class));
                        break;
                    case 3:
                        int i72 = c.e.a.f387d;
                        aVar.r();
                        break;
                    case 4:
                        int i82 = c.e.a.f387d;
                        String[] strArr = {aVar.getString(R.string.list_layout_mode_list), aVar.getString(R.string.list_layout_mode_grid)};
                        awy awyVar = aVar.p;
                        int i92 = efx.aj;
                        boolean an = cro.an(awyVar, "applist_grid_mode", true);
                        gmn z2 = ckd.z(aVar);
                        z2.p(R.string.list_layout_mode);
                        aip aipVar = new aip(2, aVar);
                        die dieVar2 = (die) z2.z;
                        dieVar2.o = strArr;
                        dieVar2.y = aipVar;
                        dieVar2.w = an ? 1 : 0;
                        dieVar2.l = true;
                        z2.ak();
                        break;
                    case 5:
                        int i102 = c.e.a.f387d;
                        aVar.getClass();
                        int i11 = yb.f20327a;
                        Bundle bundle2 = new Bundle();
                        bundle2.putBoolean("settings", true);
                        yb.i(aVar, bundle2);
                        break;
                    default:
                        int i12 = c.e.a.f387d;
                        int i13 = bus.f12241a;
                        bus.s(aVar, new Bundle());
                        break;
                }
            }
        });
        cro.ar((TextView) findViewById(R.id.shizuku_authorization_title), getString(R.string.shizuku_authorization_title), getString(R.string.shizuku_authorization_summary));
        final int i11 = 6;
        findViewById(R.id.shizuku_authorization_row).setOnClickListener(new View.OnClickListener(this) { // from class: g.rg

            /* renamed from: b, reason: collision with root package name */
            public final /* synthetic */ c.e.a f19899b;

            {
                this.f19899b = this;
            }

            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                int i22 = i11;
                c.e.a aVar = this.f19899b;
                switch (i22) {
                    case 0:
                        int i32 = c.e.a.f387d;
                        try {
                            ArrayList bm = baf.bm(aVar);
                            CharSequence[] charSequenceArr = new CharSequence[bm.size()];
                            boolean[] zArr = new boolean[bm.size()];
                            for (int i42 = 0; i42 < bm.size(); i42++) {
                                charSequenceArr[i42] = ((ServiceInfo) bm.get(i42)).loadLabel(aVar.getPackageManager());
                                ServiceInfo serviceInfo = (ServiceInfo) bm.get(i42);
                                int componentEnabledSetting = aVar.getPackageManager().getComponentEnabledSetting(new ComponentName(aVar, serviceInfo.name));
                                zArr[i42] = componentEnabledSetting == 0 ? serviceInfo.enabled : componentEnabledSetting == 1;
                            }
                            gmn z = ckd.z(aVar);
                            z.p(R.string.quick_settings_tiles);
                            gnt gntVar = new gnt(aVar, bm, zArr);
                            die dieVar = (die) z.z;
                            dieVar.o = charSequenceArr;
                            dieVar.f14219d = gntVar;
                            dieVar.j = zArr;
                            dieVar.k = true;
                            z.s(android.R.string.ok, null);
                            z.ak();
                            break;
                        } catch (RuntimeException e2) {
                            Log.e("SettingActivity", "Cannot update quick settings tiles", e2);
                            gm.f(aVar, R.string.quick_settings_tiles_update_failed);
                            return;
                        }
                    case 1:
                        int i52 = c.e.a.f387d;
                        aVar.startActivity(new Intent(aVar.p, (Class<?>) c.e.b.class));
                        break;
                    case 2:
                        int i62 = c.e.a.f387d;
                        aVar.startActivity(new Intent(aVar.p, (Class<?>) c.e.c.class));
                        break;
                    case 3:
                        int i72 = c.e.a.f387d;
                        aVar.r();
                        break;
                    case 4:
                        int i82 = c.e.a.f387d;
                        String[] strArr = {aVar.getString(R.string.list_layout_mode_list), aVar.getString(R.string.list_layout_mode_grid)};
                        awy awyVar = aVar.p;
                        int i92 = efx.aj;
                        boolean an = cro.an(awyVar, "applist_grid_mode", true);
                        gmn z2 = ckd.z(aVar);
                        z2.p(R.string.list_layout_mode);
                        aip aipVar = new aip(2, aVar);
                        die dieVar2 = (die) z2.z;
                        dieVar2.o = strArr;
                        dieVar2.y = aipVar;
                        dieVar2.w = an ? 1 : 0;
                        dieVar2.l = true;
                        z2.ak();
                        break;
                    case 5:
                        int i102 = c.e.a.f387d;
                        aVar.getClass();
                        int i112 = yb.f20327a;
                        Bundle bundle2 = new Bundle();
                        bundle2.putBoolean("settings", true);
                        yb.i(aVar, bundle2);
                        break;
                    default:
                        int i12 = c.e.a.f387d;
                        int i13 = bus.f12241a;
                        bus.s(aVar, new Bundle());
                        break;
                }
            }
        });
        final int i12 = 1;
        findViewById(R.id.open_project_group).setOnClickListener(new View.OnClickListener(this) { // from class: g.rg

            /* renamed from: b, reason: collision with root package name */
            public final /* synthetic */ c.e.a f19899b;

            {
                this.f19899b = this;
            }

            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                int i22 = i12;
                c.e.a aVar = this.f19899b;
                switch (i22) {
                    case 0:
                        int i32 = c.e.a.f387d;
                        try {
                            ArrayList bm = baf.bm(aVar);
                            CharSequence[] charSequenceArr = new CharSequence[bm.size()];
                            boolean[] zArr = new boolean[bm.size()];
                            for (int i42 = 0; i42 < bm.size(); i42++) {
                                charSequenceArr[i42] = ((ServiceInfo) bm.get(i42)).loadLabel(aVar.getPackageManager());
                                ServiceInfo serviceInfo = (ServiceInfo) bm.get(i42);
                                int componentEnabledSetting = aVar.getPackageManager().getComponentEnabledSetting(new ComponentName(aVar, serviceInfo.name));
                                zArr[i42] = componentEnabledSetting == 0 ? serviceInfo.enabled : componentEnabledSetting == 1;
                            }
                            gmn z = ckd.z(aVar);
                            z.p(R.string.quick_settings_tiles);
                            gnt gntVar = new gnt(aVar, bm, zArr);
                            die dieVar = (die) z.z;
                            dieVar.o = charSequenceArr;
                            dieVar.f14219d = gntVar;
                            dieVar.j = zArr;
                            dieVar.k = true;
                            z.s(android.R.string.ok, null);
                            z.ak();
                            break;
                        } catch (RuntimeException e2) {
                            Log.e("SettingActivity", "Cannot update quick settings tiles", e2);
                            gm.f(aVar, R.string.quick_settings_tiles_update_failed);
                            return;
                        }
                    case 1:
                        int i52 = c.e.a.f387d;
                        aVar.startActivity(new Intent(aVar.p, (Class<?>) c.e.b.class));
                        break;
                    case 2:
                        int i62 = c.e.a.f387d;
                        aVar.startActivity(new Intent(aVar.p, (Class<?>) c.e.c.class));
                        break;
                    case 3:
                        int i72 = c.e.a.f387d;
                        aVar.r();
                        break;
                    case 4:
                        int i82 = c.e.a.f387d;
                        String[] strArr = {aVar.getString(R.string.list_layout_mode_list), aVar.getString(R.string.list_layout_mode_grid)};
                        awy awyVar = aVar.p;
                        int i92 = efx.aj;
                        boolean an = cro.an(awyVar, "applist_grid_mode", true);
                        gmn z2 = ckd.z(aVar);
                        z2.p(R.string.list_layout_mode);
                        aip aipVar = new aip(2, aVar);
                        die dieVar2 = (die) z2.z;
                        dieVar2.o = strArr;
                        dieVar2.y = aipVar;
                        dieVar2.w = an ? 1 : 0;
                        dieVar2.l = true;
                        z2.ak();
                        break;
                    case 5:
                        int i102 = c.e.a.f387d;
                        aVar.getClass();
                        int i112 = yb.f20327a;
                        Bundle bundle2 = new Bundle();
                        bundle2.putBoolean("settings", true);
                        yb.i(aVar, bundle2);
                        break;
                    default:
                        int i122 = c.e.a.f387d;
                        int i13 = bus.f12241a;
                        bus.s(aVar, new Bundle());
                        break;
                }
            }
        });
        final int i13 = 2;
        findViewById(R.id.record_activity_group).setOnClickListener(new View.OnClickListener(this) { // from class: g.rg

            /* renamed from: b, reason: collision with root package name */
            public final /* synthetic */ c.e.a f19899b;

            {
                this.f19899b = this;
            }

            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                int i22 = i13;
                c.e.a aVar = this.f19899b;
                switch (i22) {
                    case 0:
                        int i32 = c.e.a.f387d;
                        try {
                            ArrayList bm = baf.bm(aVar);
                            CharSequence[] charSequenceArr = new CharSequence[bm.size()];
                            boolean[] zArr = new boolean[bm.size()];
                            for (int i42 = 0; i42 < bm.size(); i42++) {
                                charSequenceArr[i42] = ((ServiceInfo) bm.get(i42)).loadLabel(aVar.getPackageManager());
                                ServiceInfo serviceInfo = (ServiceInfo) bm.get(i42);
                                int componentEnabledSetting = aVar.getPackageManager().getComponentEnabledSetting(new ComponentName(aVar, serviceInfo.name));
                                zArr[i42] = componentEnabledSetting == 0 ? serviceInfo.enabled : componentEnabledSetting == 1;
                            }
                            gmn z = ckd.z(aVar);
                            z.p(R.string.quick_settings_tiles);
                            gnt gntVar = new gnt(aVar, bm, zArr);
                            die dieVar = (die) z.z;
                            dieVar.o = charSequenceArr;
                            dieVar.f14219d = gntVar;
                            dieVar.j = zArr;
                            dieVar.k = true;
                            z.s(android.R.string.ok, null);
                            z.ak();
                            break;
                        } catch (RuntimeException e2) {
                            Log.e("SettingActivity", "Cannot update quick settings tiles", e2);
                            gm.f(aVar, R.string.quick_settings_tiles_update_failed);
                            return;
                        }
                    case 1:
                        int i52 = c.e.a.f387d;
                        aVar.startActivity(new Intent(aVar.p, (Class<?>) c.e.b.class));
                        break;
                    case 2:
                        int i62 = c.e.a.f387d;
                        aVar.startActivity(new Intent(aVar.p, (Class<?>) c.e.c.class));
                        break;
                    case 3:
                        int i72 = c.e.a.f387d;
                        aVar.r();
                        break;
                    case 4:
                        int i82 = c.e.a.f387d;
                        String[] strArr = {aVar.getString(R.string.list_layout_mode_list), aVar.getString(R.string.list_layout_mode_grid)};
                        awy awyVar = aVar.p;
                        int i92 = efx.aj;
                        boolean an = cro.an(awyVar, "applist_grid_mode", true);
                        gmn z2 = ckd.z(aVar);
                        z2.p(R.string.list_layout_mode);
                        aip aipVar = new aip(2, aVar);
                        die dieVar2 = (die) z2.z;
                        dieVar2.o = strArr;
                        dieVar2.y = aipVar;
                        dieVar2.w = an ? 1 : 0;
                        dieVar2.l = true;
                        z2.ak();
                        break;
                    case 5:
                        int i102 = c.e.a.f387d;
                        aVar.getClass();
                        int i112 = yb.f20327a;
                        Bundle bundle2 = new Bundle();
                        bundle2.putBoolean("settings", true);
                        yb.i(aVar, bundle2);
                        break;
                    default:
                        int i122 = c.e.a.f387d;
                        int i132 = bus.f12241a;
                        bus.s(aVar, new Bundle());
                        break;
                }
            }
        });
        if (fml.e(this.p)) {
            bannerAdInit(null, fml.c(this));
            bannerAdShow();
        }
    }

    @Override // g.cms, g.dms, androidx.fragment.app.u, android.app.Activity
    public final void onResume() {
        super.onResume();
        n();
        if (this.l != null) {
            o();
        }
        SwitchCompat switchCompat = this.j;
        if (switchCompat != null) {
            switchCompat.setChecked(efx.bk(this.p));
        }
        SwitchCompat switchCompat2 = this.m;
        if (switchCompat2 != null) {
            switchCompat2.setChecked(cro.av(this.p, -1, "applist_show_recently") == 1);
        }
        SwitchCompat switchCompat3 = this.f389f;
        if (switchCompat3 != null) {
            switchCompat3.setChecked(cro.an(this.p, "layout_inspector_ow_auto_hide", true));
        }
        SwitchCompat switchCompat4 = this.f390g;
        if (switchCompat4 != null) {
            switchCompat4.setChecked(cro.an(this.p, "text_copy_ow_auto_hide", true));
        }
        SwitchCompat switchCompat5 = this.f388e;
        if (switchCompat5 != null) {
            switchCompat5.setChecked(byh.r(this.p, "d_skip_well_known_lib", true));
        }
        SwitchCompat switchCompat6 = this.k;
        if (switchCompat6 != null) {
            switchCompat6.setChecked(byh.r(this.p, "decompile_allow_media_scan", false));
        }
    }
}
