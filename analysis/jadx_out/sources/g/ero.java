package g;

import android.content.Context;
import android.content.SharedPreferences;
import android.net.Uri;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.text.format.DateUtils;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.recyclerview.widget.GridLayoutManager;
import androidx.recyclerview.widget.LinearLayoutManager;
import cn.trinea.android.developertools.R;
import java.io.File;
import java.util.HashMap;
import java.util.Iterator;
import java.util.concurrent.Callable;
import java.util.concurrent.FutureTask;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;

/* loaded from: classes3.dex */
public class ero extends cuz<File> {
    public SharedPreferences ar;
    public int as;
    public boolean am = false;
    public File ap = null;
    public int ao = 0;
    public boolean at = true;
    public final Handler an = new Handler(Looper.getMainLooper());
    public final ThreadPoolExecutor aq = new ThreadPoolExecutor(2, 2, 10, TimeUnit.SECONDS, new LinkedBlockingQueue());
    public final HashMap au = new HashMap();

    @Override // g.cuz
    public final void ab(final amu amuVar, int i, Object obj) {
        File file = (File) obj;
        aj(amuVar);
        super.ab(amuVar, i, file);
        if (file instanceof eih) {
            final eih eihVar = (eih) file;
            if (eihVar.directory && eihVar.childCount == -2) {
                final int i2 = this.as;
                FutureTask futureTask = new FutureTask(new Callable() { // from class: g.csb
                    @Override // java.util.concurrent.Callable
                    public final Object call() {
                        final eih eihVar2 = eihVar;
                        final int a2 = eihVar2.a();
                        if (Thread.currentThread().isInterrupted()) {
                            return null;
                        }
                        final ero eroVar = ero.this;
                        Handler handler = eroVar.an;
                        final int i3 = i2;
                        final amu amuVar2 = amuVar;
                        handler.post(new Runnable() { // from class: g.vy
                            @Override // java.lang.Runnable
                            public final void run() {
                                ero eroVar2 = ero.this;
                                HashMap hashMap = eroVar2.au;
                                if (eroVar2.as != i3 || eroVar2.getView() == null) {
                                    return;
                                }
                                eih eihVar3 = eihVar2;
                                eihVar3.childCount = a2;
                                amu amuVar3 = amuVar2;
                                if (amuVar3.ak == eihVar3) {
                                    FutureTask futureTask2 = (FutureTask) hashMap.get(amuVar3);
                                    if (futureTask2 != null && futureTask2.isDone()) {
                                        hashMap.remove(amuVar3);
                                    }
                                    eroVar2.ad(amuVar3, eihVar3);
                                }
                            }
                        });
                        return null;
                    }
                });
                this.au.put(amuVar, futureTask);
                this.aq.execute(futureTask);
            }
        }
    }

    @Override // g.cuz
    public final void ag(androidx.recyclerview.widget.p pVar) {
        atp atpVar = this.i;
        if (atpVar == null) {
            atpVar = null;
        }
        TextView textView = (TextView) pVar.n.findViewById(R.id.nnf_empty_title);
        boolean z = (atpVar == null || atpVar.h <= 0 || this.am) ? false : true;
        textView.setText((atpVar == null || atpVar.f10819f >= 0) ? (atpVar == null || atpVar.f10819f <= 0) ? R.string.nnf_empty_folder : R.string.nnf_empty_visible : R.string.nnf_directory_unavailable);
        pVar.n.findViewById(R.id.nnf_empty_hint).setVisibility(z ? 0 : 8);
    }

    @Override // g.cuz
    public final void ai(Object obj) {
        this.ap = (File) obj;
        if (!dyd.aa()) {
            requestPermissions(new String[]{"android.permission.WRITE_EXTERNAL_STORAGE"}, 1);
            return;
        }
        File file = this.ap;
        if (file != null) {
            al(file, true);
        }
    }

    @Override // g.cuz
    public final void aj(androidx.recyclerview.widget.p pVar) {
        FutureTask futureTask = (FutureTask) this.au.remove(pVar);
        if (futureTask != null) {
            futureTask.cancel(true);
            this.aq.remove(futureTask);
        }
        this.t.remove(pVar);
    }

    public final Uri av(Object obj) {
        File file = (File) obj;
        if (file == null) {
            return null;
        }
        return baf.bf(getContext(), file);
    }

    public final void aw() {
        this.ar.edit().putBoolean("hidden", this.am).putBoolean("grid", this.u).putInt("sort", this.ao).putBoolean("ascending", this.at).apply();
    }

    public final void ax() {
        this.as++;
        HashMap hashMap = this.au;
        Iterator it = hashMap.values().iterator();
        while (it.hasNext()) {
            ((FutureTask) it.next()).cancel(true);
        }
        hashMap.clear();
        this.aq.purge();
        this.an.removeCallbacksAndMessages(null);
    }

    public final String ay(eih eihVar) {
        int i = eihVar.childCount;
        return i == -2 ? "" : eihVar.directory ? i >= 0 ? getString(R.string.nnf_directory_count, Integer.valueOf(i)) : getString(R.string.nnf_directory_unavailable) : buj.v(eihVar.sizeBytes);
    }

    public final String az(eih eihVar, boolean z) {
        String string;
        String str = z ? eihVar.formattedGridDate : eihVar.formattedDate;
        if (str != null) {
            return str;
        }
        if (eihVar.modifiedTime > 0) {
            string = DateUtils.formatDateTime(requireContext(), eihVar.modifiedTime, (z ? 131072 : 65536) | 21);
        } else {
            string = getString(R.string.unknown);
        }
        if (z) {
            eihVar.formattedGridDate = string;
            return string;
        }
        eihVar.formattedDate = string;
        return string;
    }

    public final void ba() {
        ax();
        if (this.u) {
            int max = Math.max(2, getResources().getConfiguration().screenWidthDp / 180);
            requireContext();
            GridLayoutManager gridLayoutManager = new GridLayoutManager(max);
            gridLayoutManager.f251g = new eri(this, gridLayoutManager);
            this.w = gridLayoutManager;
        } else {
            requireContext();
            this.w = new LinearLayoutManager(1);
        }
        this.l.setLayoutManager(this.w);
        this.t.clear();
        this.j.notifyDataSetChanged();
    }

    @Override // g.cuz
    /* renamed from: bb, reason: merged with bridge method [inline-methods] */
    public final void ad(amu amuVar, File file) {
        TextView textView = amuVar.ao;
        TextView textView2 = amuVar.ap;
        if (textView == null || !(file instanceof eih)) {
            super.ad(amuVar, file);
            return;
        }
        eih eihVar = (eih) file;
        textView2.setText(az(eihVar, true));
        textView2.setVisibility(0);
        textView.setText(ay(eihVar));
        textView.setVisibility(0);
    }

    @Override // g.cuz
    /* renamed from: bc, reason: merged with bridge method [inline-methods] */
    public final void al(File file, boolean z) {
        ax();
        bze bzeVar = this.j;
        if (bzeVar != null) {
            bzeVar.f12492b = null;
            bzeVar.notifyDataSetChanged();
        }
        super.al(new File(file.getPath()), z);
    }

    @Override // g.cuz, androidx.fragment.app.Fragment
    public final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        SharedPreferences sharedPreferences = requireContext().getSharedPreferences("nnf_file_browser", 0);
        this.ar = sharedPreferences;
        this.am = sharedPreferences.getBoolean("hidden", false);
        this.u = this.ar.getBoolean("grid", false);
        this.ao = this.ar.getInt("sort", 0);
        this.at = this.ar.getBoolean("ascending", true);
        this.aq.allowCoreThreadTimeOut(true);
    }

    @Override // g.cuz, androidx.fragment.app.Fragment
    public final View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        View onCreateView = super.onCreateView(layoutInflater, viewGroup, bundle);
        ba();
        return onCreateView;
    }

    @Override // androidx.fragment.app.Fragment
    public final void onDestroy() {
        this.aq.shutdownNow();
        super.onDestroy();
    }

    @Override // androidx.fragment.app.Fragment
    public final void onDestroyView() {
        ax();
        this.l.setAdapter(null);
        super.onDestroyView();
    }

    @Override // g.cuz, androidx.fragment.app.Fragment
    public final boolean onOptionsItemSelected(MenuItem menuItem) {
        if (menuItem.getItemId() == R.id.nnf_show_hidden) {
            this.am = !this.am;
            aw();
            requireActivity().invalidateOptionsMenu();
            al((File) this.o, false);
            return true;
        }
        if (menuItem.getItemId() != R.id.nnf_view_sort) {
            return super.onOptionsItemSelected(menuItem);
        }
        View findViewById = requireActivity().findViewById(R.id.nnf_view_sort);
        Context requireContext = requireContext();
        if (findViewById == null) {
            findViewById = this.l;
        }
        gkr gkrVar = new gkr(requireContext, findViewById);
        ftn ftnVar = (ftn) gkrVar.f18325e;
        new cck(requireContext).inflate(R.menu.nnf_view_sort, ftnVar);
        cpn.a(ftnVar, true);
        ftnVar.findItem(this.u ? R.id.nnf_grid : R.id.nnf_list).setChecked(true);
        ftnVar.findItem(new int[]{R.id.nnf_sort_name, R.id.nnf_sort_size, R.id.nnf_sort_modified, R.id.nnf_sort_type}[Math.max(0, Math.min(this.ao, 3))]).setChecked(true);
        ftnVar.findItem(this.at ? R.id.nnf_ascending : R.id.nnf_descending).setChecked(true);
        gkrVar.f18323c = new aoi(10, this);
        byn bynVar = (byn) gkrVar.f18322b;
        if (bynVar.n()) {
            return true;
        }
        if (bynVar.f12455d == null) {
            throw new IllegalStateException("MenuPopupHelper cannot be used without an anchor");
        }
        bynVar.l(0, 0, false, false);
        return true;
    }

    @Override // androidx.fragment.app.Fragment
    public final void onPrepareOptionsMenu(Menu menu) {
        super.onPrepareOptionsMenu(menu);
        MenuItem findItem = menu.findItem(R.id.nnf_show_hidden);
        if (findItem != null) {
            findItem.setTitle(this.am ? R.string.nnf_hide_hidden : R.string.nnf_show_hidden);
            findItem.setIcon(this.am ? R.drawable.nnf_ic_visibility_off : R.drawable.nnf_ic_visibility);
        }
    }

    @Override // androidx.fragment.app.Fragment
    public final void onRequestPermissionsResult(int i, String[] strArr, int[] iArr) {
        if (strArr.length == 0) {
            gaf gafVar = this.s;
            if (gafVar != null) {
                gafVar.onCancelled();
                return;
            }
            return;
        }
        if (iArr[0] == 0) {
            File file = this.ap;
            if (file != null) {
                al(file, true);
                return;
            }
            return;
        }
        gm.i(getContext(), R.string.nnf_permission_external_write_denied, 0);
        gaf gafVar2 = this.s;
        if (gafVar2 != null) {
            gafVar2.onCancelled();
        }
    }

    @Override // g.cuz
    public final String y(Object obj) {
        File file = (File) obj;
        if (!(file instanceof eih)) {
            return super.y(file);
        }
        eih eihVar = (eih) file;
        String az = az(eihVar, false);
        String ay = ay(eihVar);
        return ay.isEmpty() ? az : getString(R.string.nnf_item_details, az, ay);
    }

    @Override // g.cuz
    public final boolean z(Object obj) {
        return dyd.aa() || eyt.am(getContext(), "android.permission.WRITE_EXTERNAL_STORAGE") == 0;
    }
}
