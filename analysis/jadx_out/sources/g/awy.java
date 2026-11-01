package g;

import android.content.DialogInterface;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.widget.TextView;
import androidx.appcompat.widget.SwitchCompat;
import cn.trinea.android.developertools.R;
import java.util.ArrayList;
import java.util.LinkedHashMap;

/* loaded from: classes3.dex */
public abstract class awy extends cms {
    public awy p;

    @Override // g.cms, g.dms, androidx.fragment.app.u, androidx.activity.ComponentActivity, g.emf, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R.layout.activity_setting);
        this.p = this;
        SwitchCompat switchCompat = (SwitchCompat) findViewById(R.id.compact_mode_switch);
        if (switchCompat != null) {
            awy awyVar = this.p;
            String str = bkl.f11735a;
            switchCompat.setChecked(cro.an(awyVar, "compact_mode", false));
            switchCompat.setOnCheckedChangeListener(new cey(this, 0));
        }
        awy awyVar2 = this.p;
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        linkedHashMap.put("follow_system", awyVar2.getString(R.string.follow_system));
        linkedHashMap.put("en", "English");
        linkedHashMap.put("zh_CN", "简体中文");
        linkedHashMap.put("zh_TW", "繁體中文（台灣）");
        linkedHashMap.put("zh_HK", "繁體中文（香港）");
        q(R.id.language_row, R.id.language_tv, R.id.language_value, R.string.setting_language, linkedHashMap, cro.ak(this.p, "app_language", "follow_system"), new axl(this, 0));
        awy awyVar3 = this.p;
        LinkedHashMap linkedHashMap2 = new LinkedHashMap();
        linkedHashMap2.put("follow_system", awyVar3.getString(R.string.follow_system));
        linkedHashMap2.put("dark", awyVar3.getString(R.string.dark_mode_dark));
        linkedHashMap2.put("light", awyVar3.getString(R.string.dark_mode_light));
        q(R.id.dark_mode_row, R.id.dark_mode_tv, R.id.dark_mode_value, R.string.setting_dark_mode, linkedHashMap2, byh.ax(this.p, "dark_mode", "follow_system"), new axl(this, 1));
        cro.z(findViewById(android.R.id.content));
        dyd.ao(findViewById(android.R.id.content));
    }

    @Override // android.app.Activity
    public final boolean onCreateOptionsMenu(Menu menu) {
        getMenuInflater().inflate(R.menu.setting, menu);
        return super.onCreateOptionsMenu(menu);
    }

    @Override // g.dms, android.app.Activity
    public final boolean onOptionsItemSelected(MenuItem menuItem) {
        if (this.clickInterval.b() && menuItem.getItemId() == R.id.about) {
            r();
            return true;
        }
        return super.onOptionsItemSelected(menuItem);
    }

    public final void q(int i, int i2, int i3, final int i4, final LinkedHashMap linkedHashMap, String str, final axl axlVar) {
        final View findViewById = findViewById(i);
        final TextView textView = (TextView) findViewById(i2);
        final TextView textView2 = (TextView) findViewById(i3);
        if (findViewById == null || textView == null || textView2 == null || linkedHashMap.isEmpty()) {
            return;
        }
        String str2 = (String) linkedHashMap.get(str);
        if (TextUtils.isEmpty(str2)) {
            str2 = (String) linkedHashMap.values().iterator().next();
        }
        textView2.setText(str2);
        findViewById.setContentDescription(getString(R.string.setting_value_content_description, textView.getText(), str2));
        findViewById.setOnClickListener(new View.OnClickListener() { // from class: g.czt
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                LinkedHashMap linkedHashMap2 = linkedHashMap;
                final ArrayList arrayList = new ArrayList(linkedHashMap2.keySet());
                final ArrayList arrayList2 = new ArrayList(linkedHashMap2.values());
                final TextView textView3 = textView2;
                int indexOf = arrayList2.indexOf(textView3.getText().toString());
                final awy awyVar = awy.this;
                gmn z = ckd.z(awyVar);
                z.p(i4);
                CharSequence[] charSequenceArr = (CharSequence[]) arrayList2.toArray(new String[0]);
                final View view2 = findViewById;
                final TextView textView4 = textView;
                final axl axlVar2 = axlVar;
                DialogInterface.OnClickListener onClickListener = new DialogInterface.OnClickListener() { // from class: g.ebd
                    @Override // android.content.DialogInterface.OnClickListener
                    public final void onClick(DialogInterface dialogInterface, int i5) {
                        dialogInterface.dismiss();
                        if (i5 >= 0) {
                            ArrayList arrayList3 = arrayList;
                            if (i5 >= arrayList3.size()) {
                                return;
                            }
                            String str3 = (String) arrayList2.get(i5);
                            textView3.setText(str3);
                            view2.setContentDescription(awy.this.getString(R.string.setting_value_content_description, textView4.getText(), str3));
                            String str4 = (String) arrayList3.get(i5);
                            axl axlVar3 = axlVar2;
                            int i6 = axlVar3.f11027a;
                            awy awyVar2 = axlVar3.f11028b;
                            switch (i6) {
                                case 0:
                                    awy awyVar3 = awyVar2.p;
                                    if (str4 != null && !str4.equals(cro.ak(awyVar3, "app_language", "follow_system"))) {
                                        acw.au(awyVar3, "app_language", str4);
                                        if (!"follow_system".equals(str4)) {
                                            dkn.m(azt.c(eg.ab(str4)));
                                            break;
                                        } else {
                                            dkn.m(azt.f11130a);
                                            break;
                                        }
                                    }
                                    break;
                                default:
                                    awy awyVar4 = awyVar2.p;
                                    if (str4 != null && !str4.equals(byh.ax(awyVar4, "dark_mode", "follow_system"))) {
                                        byh.ay(awyVar4, "dark_mode", str4);
                                        ckd.af(str4);
                                        break;
                                    }
                                    break;
                            }
                        }
                    }
                };
                die dieVar = (die) z.z;
                dieVar.o = charSequenceArr;
                dieVar.y = onClickListener;
                dieVar.w = indexOf;
                dieVar.l = true;
                z.ak();
            }
        });
    }

    public final void r() {
        if (getFragmentManager().findFragmentByTag("about-page") != null) {
            return;
        }
        Bundle bundle = new Bundle();
        bundle.putBoolean("showa", fml.e(((c.e.a) this).p));
        dmb dmbVar = new dmb();
        dmbVar.setArguments(bundle);
        getFragmentManager().beginTransaction().add(dmbVar, "about-page").commitAllowingStateLoss();
    }
}
