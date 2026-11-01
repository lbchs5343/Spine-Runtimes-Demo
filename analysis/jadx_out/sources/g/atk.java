package g;

import android.app.AlertDialog;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.res.Resources;
import android.os.Bundle;
import android.text.Editable;
import android.text.TextUtils;
import android.util.DisplayMetrics;
import android.view.KeyEvent;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.view.inputmethod.InputMethodManager;
import android.webkit.WebSettings;
import android.webkit.WebView;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.ProgressBar;
import android.widget.TextView;
import cn.trinea.android.developertools.R;
import com.bykv.vk.component.ttvideo.player.C;
import com.bytedance.sdk.openadsdk.TTAdConstant;
import java.io.File;
import java.io.FileWriter;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;

/* loaded from: classes.dex */
public abstract class atk extends dms implements View.OnClickListener, eha {

    /* renamed from: d, reason: collision with root package name */
    public static final /* synthetic */ int f10802d = 0;
    public ImageView aa;

    /* renamed from: ab, reason: collision with root package name */
    public InputMethodManager f10803ab;

    /* renamed from: e, reason: collision with root package name */
    public a.a.ab f10804e;

    /* renamed from: f, reason: collision with root package name */
    public String f10805f;
    public boolean i;
    public String j;
    public EditText k;
    public ImageView m;
    public TextView n;
    public bhc o;
    public coz p;
    public atk r;
    public hbj s;
    public MenuItem u;
    public View v;
    public ImageView x;
    public Menu y;
    public final String t = "manifest_mode";
    public final String w = "manifest_wrap";
    public final String l = "manifest_scalable";
    public final String q = "manifest_line_number";
    public final eqi h = new eqi(this, 1);
    public String z = "";

    /* renamed from: g, reason: collision with root package name */
    public boolean f10806g = true;

    public static String ac(int i) {
        return String.format("#%06X", Arrays.copyOf(new Object[]{Integer.valueOf(i & 16777215)}, 1));
    }

    public static void ad(Menu menu) {
        int intValue;
        Integer valueOf = menu != null ? Integer.valueOf(menu.size() - 1) : null;
        if (valueOf == null || (intValue = valueOf.intValue()) < 0) {
            return;
        }
        int i = 0;
        while (true) {
            if (menu != null) {
                MenuItem item = menu.getItem(i);
                if (item != null) {
                    item.setEnabled(false);
                }
            }
            if (i == intValue) {
                return;
            } else {
                i++;
            }
        }
    }

    public final void ae(final boolean z) {
        FileWriter fileWriter;
        String af = acw.af(this.r);
        if (TextUtils.isEmpty(af)) {
            gm.f(this.r, R.string.save_failed_no_base_folder);
            return;
        }
        if (this.s == null) {
            gm.f(this.r, R.string.save_failed_no_content);
            return;
        }
        StringBuilder o = awf.o(af);
        String str = File.separator;
        StringBuilder o2 = awf.o(awf.f(str, "manifest", str, o));
        o2.append(this.f10805f);
        String sb = o2.toString();
        String c2 = z ? awf.c(sb, ".txt") : awf.c(sb, ".html");
        final File file = new File(c2);
        FileWriter fileWriter2 = null;
        FileWriter fileWriter3 = null;
        try {
            file.getParentFile().mkdirs();
            fileWriter = new FileWriter(file, false);
        } catch (IOException unused) {
        } catch (Throwable th) {
            th = th;
        }
        try {
            if (z) {
                fileWriter.write(String.valueOf(this.s));
            } else {
                hbj hbjVar = this.s;
                fileWriter.write(hbjVar != null ? hbjVar.l(getTitle(), this.o) : null);
            }
            fileWriter.flush();
            erl.ap(fileWriter);
            View findViewById = findViewById(R.id.snackbar_layout);
            String x = buj.x(c2);
            String au = buj.au(c2);
            bff.e(au, "getFolderPath(...)");
            String af2 = acw.af(this.r);
            bff.d(af2);
            afo.ar(findViewById, getString(R.string.save_to_path_success, x, dmc.cb(au, af2, "")), 0, R.string.open, new View.OnClickListener() { // from class: g.dkt
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    Intent intent = new Intent("android.intent.action.VIEW");
                    intent.addCategory("android.intent.category.DEFAULT");
                    intent.addFlags(C.ENCODING_PCM_MU_LAW);
                    atk atkVar = atk.this;
                    intent.setDataAndType(baf.bf(atkVar.r, file), z ? "text/plain" : "text/html");
                    fgj.e().f(atkVar.r, Intent.createChooser(intent, atkVar.getString(R.string.open_file)));
                }
            });
        } catch (IOException unused2) {
            fileWriter3 = fileWriter;
            erl.ap(fileWriter3);
            gm.f(this.r, R.string.save_failed);
        } catch (Throwable th2) {
            th = th2;
            fileWriter2 = fileWriter;
            erl.ap(fileWriter2);
            throw th;
        }
    }

    public final void af() {
        a.a.ab abVar;
        InputMethodManager inputMethodManager;
        Editable text;
        String obj;
        EditText editText = this.k;
        String obj2 = (editText == null || (text = editText.getText()) == null || (obj = text.toString()) == null) ? null : dcv.bk(obj).toString();
        if (TextUtils.isEmpty(obj2)) {
            return;
        }
        if (dyd.ar(16)) {
            a.a.ab abVar2 = this.f10804e;
            if (abVar2 != null) {
                abVar2.findAll(obj2);
            }
        } else if (obj2 != null && (abVar = this.f10804e) != null) {
            abVar.findAllAsync(obj2);
        }
        this.f10806g = false;
        View currentFocus = getCurrentFocus();
        if (currentFocus == null || (inputMethodManager = this.f10803ab) == null) {
            return;
        }
        inputMethodManager.hideSoftInputFromWindow(currentFocus.getWindowToken(), 2);
    }

    public final void loadData() {
        ad(this.y);
        this.i = true;
        a.a.ab abVar = this.f10804e;
        if (abVar != null) {
            abVar.showLoadingProgress();
        }
        new Thread(new fvi(4, this)).start();
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        InputMethodManager inputMethodManager;
        Integer valueOf = view != null ? Integer.valueOf(view.getId()) : null;
        ImageView imageView = this.m;
        if (bff.n(valueOf, imageView != null ? Integer.valueOf(imageView.getId()) : null)) {
            if (this.f10806g) {
                af();
                return;
            }
            a.a.ab abVar = this.f10804e;
            if (abVar != null) {
                abVar.findNext(false);
                return;
            }
            return;
        }
        ImageView imageView2 = this.aa;
        if (bff.n(valueOf, imageView2 != null ? Integer.valueOf(imageView2.getId()) : null)) {
            if (this.f10806g) {
                af();
                return;
            }
            a.a.ab abVar2 = this.f10804e;
            if (abVar2 != null) {
                abVar2.findNext(true);
                return;
            }
            return;
        }
        ImageView imageView3 = this.x;
        if (bff.n(valueOf, imageView3 != null ? Integer.valueOf(imageView3.getId()) : null)) {
            a.a.ab abVar3 = this.f10804e;
            if (abVar3 != null) {
                abVar3.clearMatches();
            }
            this.f10806g = true;
            View view2 = this.v;
            if (view2 != null) {
                view2.setVisibility(8);
            }
            View currentFocus = getCurrentFocus();
            if (currentFocus == null || (inputMethodManager = this.f10803ab) == null) {
                return;
            }
            inputMethodManager.hideSoftInputFromWindow(currentFocus.getWindowToken(), 2);
        }
    }

    @Override // g.dms, androidx.fragment.app.u, androidx.activity.ComponentActivity, g.emf, android.app.Activity
    public final void onCreate(Bundle bundle) {
        Resources resources;
        a.a.ab abVar;
        super.onCreate(bundle);
        ckd.af(byh.ax(this, "dark_mode", "follow_system"));
        setContentView(R.layout.activity_manifest);
        this.r = this;
        Object systemService = getSystemService("input_method");
        bff.ag(systemService, "null cannot be cast to non-null type android.view.inputmethod.InputMethodManager");
        this.f10803ab = (InputMethodManager) systemService;
        String stringExtra = getIntent().getStringExtra("PACKAGE_NAME");
        if (stringExtra == null) {
            stringExtra = "cn.trinea.android.developertools";
        }
        this.f10805f = stringExtra;
        if (hca.g(stringExtra)) {
            gm.f(this, R.string.manifest_dev_tool);
            finish();
            return;
        }
        if (!cro.ba(this.r, cro.aj(getIntent()))) {
            finish();
            return;
        }
        String stringExtra2 = getIntent().getStringExtra("APP_NAME");
        this.j = stringExtra2;
        setTitle(getString(R.string.manifest, stringExtra2));
        a.a.ab abVar2 = (a.a.ab) findViewById(R.id.web_view);
        this.f10804e = abVar2;
        if (abVar2 != null) {
            abVar2.bindProgressBar((ProgressBar) findViewById(R.id.progress_bar));
        }
        a.a.ab abVar3 = this.f10804e;
        if (abVar3 != null) {
            abVar3.setHorizontalScrollBarEnabled(true);
        }
        a.a.ab abVar4 = this.f10804e;
        if (abVar4 != null) {
            abVar4.setInitialScale(100);
        }
        a.a.ab abVar5 = this.f10804e;
        WebSettings settings = abVar5 != null ? abVar5.getSettings() : null;
        SharedPreferences sharedPreferences = getSharedPreferences("TrineaAndroidCommon", 0);
        String str = this.l;
        boolean z = sharedPreferences.getBoolean(str, false);
        settings.setDisplayZoomControls(z);
        settings.setSupportZoom(z);
        settings.setBuiltInZoomControls(z);
        if (dyd.bp(16) && (abVar = this.f10804e) != null) {
            abVar.setFindListener(new WebView.FindListener() { // from class: g.cia
                @Override // android.webkit.WebView.FindListener
                public final void onFindResultReceived(int i, int i2, boolean z2) {
                    if (z2) {
                        int i3 = i2 > 0 ? i + 1 : 0;
                        TextView textView = atk.this.n;
                        if (textView != null) {
                            textView.setText(Integer.toString(i3) + " / " + Integer.toString(i2));
                        }
                    }
                }
            });
        }
        a.a.ab abVar6 = this.f10804e;
        if (abVar6 != null) {
            abVar6.setLayerType(2, null);
        }
        this.v = findViewById(R.id.find_layout);
        this.k = (EditText) findViewById(R.id.find_text);
        this.n = (TextView) findViewById(R.id.match_result);
        this.m = (ImageView) findViewById(R.id.last);
        this.aa = (ImageView) findViewById(R.id.next);
        this.x = (ImageView) findViewById(R.id.close);
        EditText editText = this.k;
        if (editText != null) {
            editText.setOnKeyListener(new View.OnKeyListener() { // from class: g.fgm
                @Override // android.view.View.OnKeyListener
                public final boolean onKey(View view, int i, KeyEvent keyEvent) {
                    if (i != 66 || keyEvent.getAction() != 0) {
                        return false;
                    }
                    atk.this.af();
                    return false;
                }
            });
        }
        ImageView imageView = this.aa;
        if (imageView != null) {
            imageView.setOnClickListener(this);
        }
        ImageView imageView2 = this.m;
        if (imageView2 != null) {
            imageView2.setOnClickListener(this);
        }
        ImageView imageView3 = this.x;
        if (imageView3 != null) {
            imageView3.setOnClickListener(this);
        }
        DisplayMetrics displayMetrics = getResources().getDisplayMetrics();
        float f2 = displayMetrics != null ? displayMetrics.density : TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT;
        atk atkVar = this.r;
        int dimensionPixelSize = (atkVar == null || (resources = atkVar.getResources()) == null) ? 14 : resources.getDimensionPixelSize(R.dimen.sp_14);
        int round = f2 > TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT ? Math.round(f2 * 11.428572f) : 40;
        int z2 = eyt.z(this, R.attr.colorSurface, -1);
        int z3 = eyt.z(this, R.attr.colorOnSurface, -16777216);
        int z4 = eyt.z(this, R.attr.colorOnSurfaceVariant, -12303292);
        int z5 = eyt.z(this, R.attr.colorPrimary, z3);
        int z6 = eyt.z(this, R.attr.colorSecondary, z5);
        a.a.ab abVar7 = this.f10804e;
        if (abVar7 != null) {
            abVar7.setBackgroundColor(z2);
        }
        String ac = ac(z2);
        String ac2 = ac(z4);
        String ac3 = ac(z5);
        String ac4 = ac(z4);
        String ac5 = ac(z5);
        String ac6 = ac(z3);
        String ac7 = ac(z4);
        String ac8 = ac(z6);
        String ac9 = ac(z4);
        String ac10 = ac(z3);
        boolean z7 = getSharedPreferences("TrineaAndroidCommon", 0).getBoolean(this.w, false);
        bhc bhcVar = new bhc();
        bhcVar.h = ac;
        bhcVar.l = ac2;
        bhcVar.n = ac3;
        bhcVar.f11567e = ac4;
        bhcVar.f11569g = ac5;
        bhcVar.i = ac6;
        bhcVar.o = ac7;
        bhcVar.f11563a = ac8;
        bhcVar.k = ac9;
        bhcVar.m = ac10;
        bhcVar.f11564b = dimensionPixelSize;
        bhcVar.f11568f = round;
        bhcVar.j = z7;
        bhcVar.f11566d = false;
        bhcVar.f11565c = 0;
        this.o = bhcVar;
        cro.an(this, str, false);
        bhc bhcVar2 = this.o;
        if (bhcVar2 != null) {
            bhcVar2.f11566d = getSharedPreferences("TrineaAndroidCommon", 0).getBoolean(this.q, false);
        }
        int i = getSharedPreferences("TrineaAndroidCommon", 0).getInt(this.t, 0);
        if (i == 1) {
            bhc bhcVar3 = this.o;
            if (bhcVar3 != null) {
                bhcVar3.f11565c = 1;
            }
        } else if (i != 2) {
            bhc bhcVar4 = this.o;
            if (bhcVar4 != null) {
                bhcVar4.f11565c = 0;
            }
        } else {
            bhc bhcVar5 = this.o;
            if (bhcVar5 != null) {
                bhcVar5.f11565c = 2;
            }
        }
        loadData();
    }

    @Override // android.app.Activity
    public final boolean onCreateOptionsMenu(Menu menu) {
        MenuItem findItem;
        MenuItem findItem2;
        MenuItem findItem3;
        MenuItem findItem4;
        MenuItem findItem5;
        MenuItem findItem6;
        MenuItem findItem7;
        getMenuInflater().inflate(R.menu.manifest, menu);
        this.y = menu;
        this.u = menu != null ? menu.findItem(R.id.mode) : null;
        boolean z = false;
        int i = getSharedPreferences("TrineaAndroidCommon", 0).getInt(this.t, 0);
        if (i == 1) {
            MenuItem menuItem = this.u;
            if (menuItem != null) {
                menuItem.setTitle(R.string.manifest_mode_text);
            }
            if (menu != null && (findItem = menu.findItem(R.id.mode_text)) != null) {
                findItem.setChecked(true);
            }
        } else if (i != 2) {
            MenuItem menuItem2 = this.u;
            if (menuItem2 != null) {
                menuItem2.setTitle(R.string.manifest_mode_auto);
            }
            if (menu != null && (findItem7 = menu.findItem(R.id.mode_auto)) != null) {
                findItem7.setChecked(true);
            }
        } else {
            MenuItem menuItem3 = this.u;
            if (menuItem3 != null) {
                menuItem3.setTitle(R.string.manifest_mode_html);
            }
            if (menu != null && (findItem6 = menu.findItem(R.id.mode_html)) != null) {
                findItem6.setChecked(true);
            }
        }
        if (menu != null && (findItem5 = menu.findItem(R.id.wrap)) != null) {
            findItem5.setChecked(getSharedPreferences("TrineaAndroidCommon", 0).getBoolean(this.w, false));
        }
        if (menu != null && (findItem4 = menu.findItem(R.id.scalable)) != null) {
            findItem4.setChecked(getSharedPreferences("TrineaAndroidCommon", 0).getBoolean(this.l, false));
        }
        if (menu != null && (findItem3 = menu.findItem(R.id.line_number)) != null) {
            findItem3.setChecked(getSharedPreferences("TrineaAndroidCommon", 0).getBoolean(this.q, false));
        }
        if (menu != null && (findItem2 = menu.findItem(R.id.bundle_info)) != null) {
            hbj hbjVar = this.s;
            if (hbjVar != null && hbjVar.i) {
                z = true;
            }
            findItem2.setVisible(z);
        }
        if (this.i) {
            ad(menu);
        }
        return super.onCreateOptionsMenu(menu);
    }

    @Override // g.dms, android.app.Activity
    public final boolean onOptionsItemSelected(MenuItem menuItem) {
        ArrayList arrayList;
        bff.p(menuItem, "item");
        if (!this.clickInterval.b()) {
            return super.onOptionsItemSelected(menuItem);
        }
        int itemId = menuItem.getItemId();
        int i = 0;
        if (itemId == R.id.search) {
            View view = this.v;
            if (view == null || view.getVisibility() != 0) {
                View view2 = this.v;
                if (view2 != null) {
                    view2.setVisibility(0);
                }
                EditText editText = this.k;
                if (editText != null) {
                    editText.requestFocus();
                }
                EditText editText2 = this.k;
                if (editText2 != null) {
                    editText2.selectAll();
                }
                InputMethodManager inputMethodManager = this.f10803ab;
                if (inputMethodManager != null) {
                    inputMethodManager.showSoftInput(this.k, 0);
                }
            } else {
                ImageView imageView = this.x;
                if (imageView != null) {
                    imageView.performClick();
                }
            }
        } else if (itemId == R.id.save) {
            new AlertDialog.Builder(this.r).setTitle(getTitle()).setIcon(R.drawable.baec).setItems(R.array.manifest_save_menus, new aip(i, this)).show();
        } else {
            if (itemId == R.id.bundle_info) {
                AlertDialog.Builder title = new AlertDialog.Builder(this.r).setTitle(getTitle());
                StringBuilder sb = new StringBuilder();
                sb.append(getString(R.string.manifest_tip_for_app_bundle, this.j));
                sb.append("\n\n");
                hbj hbjVar = this.s;
                sb.append(getString(R.string.manifest_sources, (hbjVar == null || (arrayList = hbjVar.f19177g) == null) ? null : gsv.bh(arrayList, "\n", null, 62)));
                title.setMessage(sb.toString()).setPositiveButton(android.R.string.ok, (DialogInterface.OnClickListener) null).show();
            } else {
                String str = this.t;
                if (itemId == R.id.mode_auto) {
                    menuItem.setChecked(!menuItem.isChecked());
                    cro.az(this, 0, str);
                    bhc bhcVar = this.o;
                    if (bhcVar != null) {
                        bhcVar.f11565c = 0;
                    }
                    MenuItem menuItem2 = this.u;
                    if (menuItem2 != null) {
                        menuItem2.setTitle(getString(R.string.manifest_mode_auto));
                    }
                    loadData();
                } else if (itemId == R.id.mode_html) {
                    menuItem.setChecked(!menuItem.isChecked());
                    cro.az(this, 2, str);
                    bhc bhcVar2 = this.o;
                    if (bhcVar2 != null) {
                        bhcVar2.f11565c = 2;
                    }
                    MenuItem menuItem3 = this.u;
                    if (menuItem3 != null) {
                        menuItem3.setTitle(getString(R.string.manifest_mode_html));
                    }
                    loadData();
                } else if (itemId == R.id.mode_text) {
                    menuItem.setChecked(!menuItem.isChecked());
                    cro.az(this, 1, str);
                    bhc bhcVar3 = this.o;
                    if (bhcVar3 != null) {
                        bhcVar3.f11565c = 1;
                    }
                    MenuItem menuItem4 = this.u;
                    if (menuItem4 != null) {
                        menuItem4.setTitle(getString(R.string.manifest_mode_text));
                    }
                    loadData();
                } else if (itemId == R.id.wrap) {
                    menuItem.setChecked(!menuItem.isChecked());
                    cro.af(this, this.w, menuItem.isChecked());
                    bhc bhcVar4 = this.o;
                    if (bhcVar4 != null) {
                        bhcVar4.j = menuItem.isChecked();
                    }
                    loadData();
                } else if (itemId == R.id.scalable) {
                    menuItem.setChecked(!menuItem.isChecked());
                    cro.af(this, this.l, menuItem.isChecked());
                    a.a.ab abVar = this.f10804e;
                    WebSettings settings = abVar != null ? abVar.getSettings() : null;
                    boolean isChecked = menuItem.isChecked();
                    settings.setDisplayZoomControls(isChecked);
                    settings.setSupportZoom(isChecked);
                    settings.setBuiltInZoomControls(isChecked);
                } else if (itemId == R.id.line_number) {
                    menuItem.setChecked(!menuItem.isChecked());
                    cro.af(this, this.q, menuItem.isChecked());
                    bhc bhcVar5 = this.o;
                    if (bhcVar5 != null) {
                        bhcVar5.f11566d = menuItem.isChecked();
                    }
                    loadData();
                } else if (itemId == R.id.share) {
                    if (this.s == null) {
                        gm.f(this.r, R.string.save_failed_no_content);
                    } else {
                        Intent intent = new Intent();
                        intent.setAction("android.intent.action.SEND");
                        intent.putExtra("android.intent.extra.TEXT", String.valueOf(this.s));
                        intent.setType("text/plain");
                        fgj.e().f(this.r, Intent.createChooser(intent, getResources().getText(R.string.share)));
                    }
                } else if (itemId == R.id.start_app) {
                    if (!TextUtils.isEmpty(this.f10805f)) {
                        atk atkVar = this.r;
                        fgj.e().f(atkVar, atkVar.getPackageManager().getLaunchIntentForPackage(this.f10805f));
                    }
                } else if (itemId == R.id.start_app_info && !TextUtils.isEmpty(this.f10805f)) {
                    eyt.bv(this.r, this.f10805f);
                }
            }
        }
        return super.onOptionsItemSelected(menuItem);
    }

    @Override // g.dms, androidx.fragment.app.u, androidx.activity.ComponentActivity, android.app.Activity
    public final void onRequestPermissionsResult(int i, String[] strArr, int[] iArr) {
        bff.p(strArr, "permissions");
        bff.p(iArr, "grantResults");
        if (i == 200) {
            if (iArr.length > 0 && iArr[0] == 0 && eyt.am(this, "android.permission.WRITE_EXTERNAL_STORAGE") == 0) {
                ae(true);
                return;
            } else {
                fyt.f(this.r);
                return;
            }
        }
        if (i != 201) {
            super.onRequestPermissionsResult(i, strArr, iArr);
        } else if (iArr.length > 0 && iArr[0] == 0 && eyt.am(this, "android.permission.WRITE_EXTERNAL_STORAGE") == 0) {
            ae(false);
        } else {
            fyt.f(this.r);
        }
    }
}
