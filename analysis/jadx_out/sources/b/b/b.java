package b.b;

import a.f.ab;
import android.content.ContentValues;
import android.content.Intent;
import android.database.sqlite.SQLiteDatabase;
import android.text.TextUtils;
import android.view.Menu;
import android.view.MenuItem;
import android.widget.TextView;
import cn.trinea.android.developertools.R;
import com.bytedance.sdk.openadsdk.downloadnew.core.TTDownloadField;
import g.abn;
import g.acw;
import g.ada;
import g.afa;
import g.aky;
import g.aoy;
import g.auj;
import g.awf;
import g.baf;
import g.buj;
import g.byh;
import g.ckd;
import g.cpn;
import g.cro;
import g.csm;
import g.cwq;
import g.dha;
import g.dlb;
import g.doq;
import g.dyd;
import g.eas;
import g.efx;
import g.eib;
import g.ern;
import g.eso;
import g.eyt;
import g.ffb;
import g.fgj;
import g.fml;
import g.gfh;
import g.gm;
import g.gwf;
import g.hca;
import g.ry;
import g.ur;
import java.io.BufferedReader;
import java.io.File;
import java.io.IOException;
import java.io.InputStreamReader;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.LinkedHashMap;
import java.util.LinkedHashSet;
import java.util.concurrent.atomic.AtomicLong;

/* loaded from: classes.dex */
public class b extends doq {

    /* renamed from: d, reason: collision with root package name */
    public static final /* synthetic */ int f353d = 0;
    public LinkedHashSet j;
    public String k;
    public final AtomicLong l = new AtomicLong(0);

    public static void m(b bVar, ur urVar) {
        LinkedHashMap y = bVar.y();
        if (!byh.r(bVar.bb, "d_skip_well_known_lib", true) || y == null || y.isEmpty()) {
            return;
        }
        bVar.j = new LinkedHashSet();
        urVar.ac = new ry(bVar, 1, y);
    }

    public static ur n(b bVar, String str, File file) {
        ur urVar = new ur();
        urVar.ad.add(new File(str));
        urVar.aj = file;
        urVar.f20119d = Math.max(1, Math.max(1, Math.min(3, Runtime.getRuntime().availableProcessors() - 2)));
        urVar.s = new File(file, "java");
        urVar.z = file;
        urVar.aq = afa.NONE;
        return urVar;
    }

    public static String o(b bVar, String str) {
        if (str == null || str.trim().isEmpty()) {
            return "";
        }
        String trim = str.trim();
        return trim.startsWith("MSG:init_engine") ? bVar.getString(R.string.decompile_init_engine) : trim.startsWith("MSG:read_dex") ? bVar.getString(R.string.decompile_read_dex) : trim.startsWith("MSG:prepare_class_map") ? bVar.getString(R.string.decompile_prepare_class_map) : trim.startsWith("MSG:extract_res") ? bVar.getString(R.string.decompile_extract_res) : trim.startsWith("MSG:integrate_class_ref") ? bVar.getString(R.string.decompile_integrate_class_ref) : trim.startsWith("MSG:start_ast") ? bVar.getString(R.string.decompile_start_ast) : trim.startsWith("MSG:pre_analysis:") ? bVar.getString(R.string.decompile_pre_analysis, trim.substring(17)) : trim.startsWith("MSG:init_core") ? bVar.getString(R.string.decompile_init_core) : trim.startsWith("MSG:load_complete") ? bVar.getString(R.string.decompile_load_complete) : trim.startsWith("MSG:build_node:") ? bVar.getString(R.string.decompile_build_node, trim.substring(15)) : trim.startsWith("SOURCE:") ? trim.substring(7) : trim.startsWith("RES:") ? trim.substring(4) : trim;
    }

    public static void p(b bVar, File file) {
        LinkedHashMap y;
        LinkedHashSet linkedHashSet = bVar.j;
        if (linkedHashSet == null || linkedHashSet.isEmpty() || (y = bVar.y()) == null) {
            return;
        }
        try {
            String str = file.getAbsolutePath() + File.separator + "ReadMeByDevTools.txt";
            StringBuilder sb = new StringBuilder();
            sb.append(bVar.getString(R.string.readme_filtered_header));
            sb.append("\r\n");
            int i = 0;
            for (String str2 : bVar.j) {
                String str3 = (String) y.get(str2);
                i++;
                sb.append(i);
                sb.append(". ");
                sb.append(str2);
                sb.append("\r\n");
                if (str3 != null && !str3.isEmpty()) {
                    sb.append(str3);
                    sb.append("\r\n");
                }
                sb.append("\n");
            }
            buj.ag(str, sb.toString(), false);
        } catch (Throwable unused) {
        }
    }

    @Override // g.doq
    public final void aa(String str) {
        x();
        Intent intent = new Intent(this.bb, (Class<?>) ab.class);
        intent.putExtra(eso.EXTRA_START_PATH, str);
        fgj.e().f(this.bb, intent);
    }

    @Override // g.doq
    public final String ab() {
        return "apk";
    }

    @Override // g.efx
    public final csm e(efx efxVar, boolean z) {
        eas easVar = new eas(efxVar, z, this.ah, 1);
        ((doq) this).ad = easVar;
        return easVar;
    }

    @Override // g.efx
    public final String f() {
        return fml.g(this.bb);
    }

    @Override // g.efx
    public final String g() {
        return fml.b(this.bb);
    }

    @Override // g.doq, g.efx
    public final void h(Intent intent) {
        ckd.af(byh.ax(this, "dark_mode", "follow_system"));
        super.h(intent);
    }

    @Override // g.efx
    public final String i() {
        return fml.f(this.bb);
    }

    @Override // g.efx, android.app.Activity
    public final boolean onCreateOptionsMenu(Menu menu) {
        getMenuInflater().inflate(R.menu.app_list_decompile, menu);
        try {
            if (dyd.bp(28)) {
                menu.setGroupDividerEnabled(true);
            } else {
                cpn.class.getMethod("Oo0Ooo0o00", Menu.class, Boolean.TYPE).invoke(menu, Boolean.TRUE);
            }
        } catch (Throwable unused) {
        }
        MenuItem findItem = menu.findItem(R.id.layout_mode);
        if (findItem != null) {
            findItem.setIcon(getSharedPreferences("TrineaAndroidCommon", 0).getBoolean("applist_grid_mode", true) ? R.drawable.menu_mode_list : R.drawable.menu_mode_grid);
        }
        MenuItem findItem2 = menu.findItem(R.id.show_system_app);
        if (findItem2 != null) {
            findItem2.setChecked(efx.bk(this.bb));
        }
        MenuItem findItem3 = menu.findItem(R.id.skip_well_known_lib);
        if (findItem3 != null) {
            findItem3.setChecked(byh.r(this.bb, "d_skip_well_known_lib", true));
        }
        MenuItem findItem4 = menu.findItem(R.id.allow_media_scan);
        if (findItem4 != null) {
            findItem4.setChecked(byh.r(this.bb, "decompile_allow_media_scan", false));
        }
        MenuItem findItem5 = menu.findItem(R.id.decompile_all);
        MenuItem findItem6 = menu.findItem(R.id.decompile_code);
        MenuItem findItem7 = menu.findItem(R.id.decompile_res);
        int i = getSharedPreferences("TrineaAndroidCommon", 0).getInt("applist_decompile", 0);
        if (i == 1) {
            findItem6.setChecked(true);
        } else if (i != 2) {
            findItem5.setChecked(true);
        } else {
            findItem7.setChecked(true);
        }
        return true;
    }

    @Override // g.efx, g.dms, android.app.Activity
    public final boolean onOptionsItemSelected(MenuItem menuItem) {
        if (!this.clickInterval.b()) {
            return super.onOptionsItemSelected(menuItem);
        }
        int itemId = menuItem.getItemId();
        if (itemId == R.id.layout_mode) {
            this.ba = !this.ba;
            bl();
            menuItem.setIcon(this.ba ? R.drawable.menu_mode_list : R.drawable.menu_mode_grid);
            cro.af(this, "applist_grid_mode", this.ba);
        } else if (itemId == R.id.show_system_app) {
            boolean isChecked = menuItem.isChecked();
            if (!isChecked && !this.au.h.t) {
                bn();
            }
            menuItem.setChecked(!isChecked);
            String str = this.au.f18872f;
            if (!TextUtils.isEmpty(str)) {
                this.an.setText(str);
                this.an.setSelection(str.length());
            }
            this.au.f18869c = menuItem.isChecked();
            gwf gwfVar = this.au;
            gwfVar.l(gwfVar.f18872f);
            byh.ad(this, "applist_show_system_app", menuItem.isChecked());
        } else if (itemId == R.id.skip_well_known_lib) {
            menuItem.setChecked(!menuItem.isChecked());
            byh.ad(this, "d_skip_well_known_lib", menuItem.isChecked());
        } else {
            if (itemId != R.id.allow_media_scan) {
                if (itemId == R.id.show_recently_used_app) {
                    boolean isChecked2 = menuItem.isChecked();
                    boolean z = !isChecked2;
                    if (!isChecked2) {
                        cwq cwqVar = this.au.j;
                        if (!ern.h(cwqVar.v, cwqVar.f13643c)) {
                            eib.bd(this, aky.o(this.bb, R.string.app_list_accessibility_permission, R.string.acb, R.string.accessibility_permission_message_sufffix_null), null, null, null, null);
                        }
                    }
                    menuItem.setChecked(z);
                    gwf gwfVar2 = this.au;
                    gwfVar2.f18870d = z;
                    gwfVar2.l(gwfVar2.f18872f);
                    cro.az(this, z ? 1 : 0, "applist_show_recently");
                } else if (itemId == R.id.decompile_all) {
                    menuItem.setChecked(!menuItem.isChecked());
                    cro.az(this, 0, "applist_decompile");
                } else if (itemId == R.id.decompile_code) {
                    menuItem.setChecked(!menuItem.isChecked());
                    cro.az(this, 1, "applist_decompile");
                } else if (itemId == R.id.decompile_res) {
                    menuItem.setChecked(!menuItem.isChecked());
                    cro.az(this, 2, "applist_decompile");
                }
                return super.onOptionsItemSelected(menuItem);
            }
            menuItem.setChecked(!menuItem.isChecked());
            byh.ad(this, "decompile_allow_media_scan", menuItem.isChecked());
            dha.a(this);
        }
        return super.onOptionsItemSelected(menuItem);
    }

    @Override // g.doq
    public final void q() {
        baf.ap(this.bb, acw.af(this.bb) + File.separator + abn.EXTRA_SOURCE, true);
    }

    @Override // g.doq
    public final String r() {
        StringBuilder sb = new StringBuilder();
        sb.append(acw.bk(this.bb));
        return awf.ad(sb, File.separator, abn.EXTRA_SOURCE);
    }

    @Override // g.doq
    public final void s() {
        super.s();
        getWindow().addFlags(TTDownloadField.CALL_DOWNLOAD_MODEL_SET_APP_NAME);
        int av = cro.av(this.bb, 0, "applist_decompile");
        String string = av == 1 ? getString(R.string.dec_code) : av == 2 ? getString(R.string.dec_resource) : getString(R.string.dec_all);
        this.k = v(this.ae);
        this.az.setText(getString(R.string.decompiling, this.ae.j, string, r()));
        this.az.setMaxLines(2);
        TextView textView = this.az;
        TextUtils.TruncateAt truncateAt = TextUtils.TruncateAt.END;
        textView.setEllipsize(truncateAt);
        this.ay.setMaxLines(2);
        this.ay.setEllipsize(truncateAt);
        this.ay.setText(getString(R.string.decompile_loading) + "\n");
        this.ay.setVisibility(0);
    }

    @Override // g.doq
    public final void t() {
        gm.f(this.bb, R.string.decompile_dev_tool);
    }

    @Override // g.doq
    public final void u() {
        ContentValues contentValues;
        auj aujVar = this.ae;
        if (aujVar != null && hca.g(aujVar.h)) {
            t();
            return;
        }
        s();
        auj aujVar2 = this.ae;
        String str = this.k;
        int bj = eyt.bj(this.bb);
        String str2 = aujVar2.h;
        int i = aujVar2.f10871g;
        long j = aujVar2.i;
        if (j <= 0) {
            j = aujVar2.f10865a;
        }
        SimpleDateFormat simpleDateFormat = dlb.f14354a;
        long currentTimeMillis = System.currentTimeMillis();
        efx efxVar = this.bb;
        if (TextUtils.isEmpty(str2)) {
            contentValues = null;
        } else {
            contentValues = new ContentValues();
            contentValues.put("pn", str2);
            contentValues.put("vc", Integer.valueOf(i));
            contentValues.put("iut", Long.valueOf(j));
            contentValues.put("sp", str);
            contentValues.put("s", (Integer) 1);
            contentValues.put("bt", Long.valueOf(currentTimeMillis));
            contentValues.put("et", (Long) (-1L));
            contentValues.put(ada.COLUMN_CREATE_TIME, (Long) (-1L));
            contentValues.put("dtvc", Integer.valueOf(bj));
        }
        if (contentValues != null) {
            synchronized (aoy.class) {
                ((SQLiteDatabase) aoy.n(efxVar).h).replace(ada.COLUMN_DOMAIN, null, contentValues);
            }
        }
        auj aujVar3 = this.ae;
        if (aujVar3 != null) {
            String str3 = aujVar3.f10868d;
            if (!TextUtils.isEmpty(str3)) {
                ffb.as().execute(new gfh(12, this, str3, false));
                return;
            }
        }
        x();
        x();
        gm.f(this.bb, R.string.save_failed);
    }

    public final String v(auj aujVar) {
        StringBuilder sb = new StringBuilder();
        StringBuilder sb2 = new StringBuilder();
        sb2.append(acw.af(this.bb));
        String str = File.separator;
        sb2.append(str);
        sb2.append(abn.EXTRA_SOURCE);
        sb.append(sb2.toString());
        sb.append(str);
        sb.append(aujVar.j);
        sb.append(" ");
        SimpleDateFormat simpleDateFormat = dlb.f14354a;
        sb.append(dlb.d(System.currentTimeMillis(), doq.ac));
        return sb.toString();
    }

    @Override // g.doq
    public final void w(Object obj) {
        if (obj == null) {
            return;
        }
        this.ay.setText((String) obj);
    }

    @Override // g.doq
    public final void x() {
        super.x();
        getWindow().clearFlags(TTDownloadField.CALL_DOWNLOAD_MODEL_SET_APP_NAME);
    }

    /* JADX WARN: Removed duplicated region for block: B:25:0x0053 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:27:0x0054  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final LinkedHashMap y() {
        ArrayList<String> arrayList;
        efx efxVar = this.bb;
        if (efxVar != null && !TextUtils.isEmpty("ab")) {
            arrayList = new ArrayList();
            try {
                BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(efxVar.getResources().getAssets().open("ab")));
                while (true) {
                    String readLine = bufferedReader.readLine();
                    if (readLine == null) {
                        break;
                    }
                    if (!TextUtils.isEmpty(readLine)) {
                        String trim = readLine.trim();
                        if (trim.length() > 0) {
                            arrayList.add(trim);
                        }
                    }
                }
                bufferedReader.close();
            } catch (IOException e2) {
                e2.printStackTrace();
            }
            if (!acw.u(arrayList)) {
                return null;
            }
            LinkedHashMap linkedHashMap = new LinkedHashMap();
            for (String str : arrayList) {
                int indexOf = str.indexOf(" ");
                if (indexOf > 0) {
                    linkedHashMap.put(str.substring(0, indexOf).trim() + ".", str.substring(indexOf).trim());
                }
            }
            return linkedHashMap;
        }
        arrayList = null;
        if (!acw.u(arrayList)) {
        }
    }

    @Override // g.doq
    public final void z(auj aujVar) {
        baf.ap(this.bb, v(aujVar), true);
    }
}
