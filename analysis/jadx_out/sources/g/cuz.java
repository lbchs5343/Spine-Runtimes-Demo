package g;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.os.Bundle;
import android.os.Looper;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.widget.CheckBox;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.fragment.app.Fragment;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import cn.trinea.android.developertools.R;
import java.io.File;
import java.lang.reflect.Modifier;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Stack;

/* loaded from: classes3.dex */
public abstract class cuz<T> extends Fragment {
    public RecyclerView l;
    public EditText m;
    public gaf s;
    public boolean u;
    public LinearLayoutManager w;
    public int k = 0;
    public Object o = null;
    public boolean p = false;
    public boolean x = false;
    public boolean h = true;

    /* renamed from: f, reason: collision with root package name */
    public boolean f13566f = false;
    public bze j = null;
    public atp i = null;

    /* renamed from: g, reason: collision with root package name */
    public boolean f13567g = false;
    public View v = null;
    public View q = null;
    public final HashSet r = new HashSet();
    public final HashSet t = new HashSet();
    public final Stack n = new Stack();

    public cuz() {
        setRetainInstance(true);
    }

    public final void aa(evr evrVar) {
        Object obj = evrVar.ak;
        CheckBox checkBox = evrVar.ar;
        HashSet hashSet = this.r;
        boolean contains = hashSet.contains(obj);
        HashSet hashSet2 = this.t;
        if (contains) {
            checkBox.setChecked(false);
            hashSet.remove(evrVar.ak);
            hashSet2.remove(evrVar);
        } else {
            if (!this.x) {
                ak();
            }
            checkBox.setChecked(true);
            hashSet.add(evrVar.ak);
            hashSet2.add(evrVar);
        }
    }

    public void ab(amu amuVar, int i, Object obj) {
        amuVar.ak = obj;
        View view = amuVar.am;
        File file = (File) obj;
        view.setVisibility((file.isDirectory() || this.u) ? 0 : 8);
        if (this.u) {
            ((ImageView) view).setImageResource(file.isDirectory() ? R.drawable.nnf_ic_folder_black_48dp : R.drawable.nnf_ic_file_48dp);
        }
        amuVar.al.setText(file.getName());
        ad(amuVar, obj);
        if (ac(obj)) {
            boolean contains = this.r.contains(obj);
            HashSet hashSet = this.t;
            if (!contains) {
                hashSet.remove(amuVar);
                ((evr) amuVar).ar.setChecked(false);
            } else {
                evr evrVar = (evr) amuVar;
                hashSet.add(evrVar);
                evrVar.ar.setChecked(true);
            }
        }
    }

    public final boolean ac(Object obj) {
        if (((File) obj).isDirectory()) {
            int i = this.k;
            return (i == 1 && this.x) || (i == 2 && this.x);
        }
        int i2 = this.k;
        return i2 == 0 || i2 == 2 || this.h;
    }

    public void ad(amu amuVar, Object obj) {
        amuVar.ap.setText(y(obj));
        TextView textView = amuVar.ap;
        textView.setVisibility(TextUtils.isEmpty(textView.getText()) ? 8 : 0);
    }

    public final void ae(String str) {
        int lastIndexOf = str.lastIndexOf(File.separator);
        if (lastIndexOf != -1) {
            str = str.substring(lastIndexOf + 1);
        }
        getActivity().setTitle(str);
        gs.k(getActivity(), null);
    }

    public final void af() {
        Uri av;
        if (this.s == null) {
            return;
        }
        boolean z = this.x;
        HashSet hashSet = this.r;
        if (z || this.k == 0) {
            if (hashSet.isEmpty()) {
                return;
            }
            Iterator it = hashSet.iterator();
            if ((it.hasNext() ? it.next() : null) == null) {
                return;
            }
        }
        int i = this.k;
        if (i == 3) {
            String obj = this.m.getText().toString();
            if (obj.startsWith("/")) {
                av = ((ero) this).av(new File(obj));
            } else {
                String i2 = awf.i(((File) this.o).getPath(), "/", obj);
                while (i2.contains("//")) {
                    i2 = i2.replaceAll("//", "/");
                }
                if (i2.length() > 1 && i2.endsWith("/")) {
                    i2 = i2.substring(0, i2.length() - 1);
                }
                av = ((ero) this).av(new File(i2));
            }
            this.s.onFilePicked(av);
            return;
        }
        if (this.x) {
            gaf gafVar = this.s;
            ArrayList arrayList = new ArrayList();
            Iterator it2 = hashSet.iterator();
            while (it2.hasNext()) {
                Object next = it2.next();
                ero eroVar = (ero) this;
                if (eroVar.av(next) != null) {
                    arrayList.add(eroVar.av(next));
                }
            }
            gafVar.onFilesPicked(arrayList);
            return;
        }
        if (i == 0) {
            gaf gafVar2 = this.s;
            Iterator it3 = hashSet.iterator();
            gafVar2.onFilePicked(((ero) this).av(it3.hasNext() ? it3.next() : null));
        } else if (i == 1) {
            this.s.onFilePicked(((ero) this).av(this.o));
        } else {
            if (hashSet.isEmpty()) {
                this.s.onFilePicked(((ero) this).av(this.o));
                return;
            }
            gaf gafVar3 = this.s;
            Iterator it4 = hashSet.iterator();
            gafVar3.onFilePicked(((ero) this).av(it4.hasNext() ? it4.next() : null));
        }
    }

    public void ag(androidx.recyclerview.widget.p pVar) {
    }

    public final void ah(Object obj) {
        if (this.f13567g) {
            return;
        }
        this.r.clear();
        this.t.clear();
        al(obj, true);
    }

    public void ai(Object obj) {
    }

    public void aj(androidx.recyclerview.widget.p pVar) {
    }

    public final void ak() {
        HashSet hashSet = this.t;
        Iterator it = hashSet.iterator();
        while (it.hasNext()) {
            ((evr) it.next()).ar.setChecked(false);
        }
        hashSet.clear();
        this.r.clear();
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r14v5, types: [g.iz, java.lang.Object] */
    public void al(Object obj, boolean z) {
        if (!z(obj)) {
            ai(obj);
            return;
        }
        if (z && !obj.equals(this.o)) {
            this.n.push(this.o);
        }
        this.o = obj;
        this.f13567g = true;
        gkm gkmVar = (gkm) getLoaderManager();
        her herVar = gkmVar.f18311c;
        if (herVar.f19356c) {
            throw new IllegalStateException("Called while creating a loader");
        }
        if (Looper.getMainLooper() != Looper.myLooper()) {
            throw new IllegalStateException("restartLoader must be called on the main thread");
        }
        fm fmVar = (fm) herVar.f19355b.f(0);
        adh y = fmVar != null ? fmVar.y(false) : null;
        try {
            herVar.f19356c = true;
            ero eroVar = (ero) this;
            adh adhVar = new adh(eroVar, eroVar.requireContext(), new File(((File) eroVar.o).getPath()), eroVar.ao, eroVar.at, eroVar.am);
            if (adh.class.isMemberClass() && !Modifier.isStatic(adh.class.getModifiers())) {
                throw new IllegalArgumentException("Object returned from onCreateLoader must not be a non-static inner member class: " + adhVar);
            }
            fm fmVar2 = new fm(adhVar, y);
            herVar.f19355b.h(0, fmVar2);
            herVar.f19356c = false;
            ?? r14 = gkmVar.f18310b;
            gez gezVar = new gez(fmVar2.w, this);
            fmVar2.n(r14, gezVar);
            gez gezVar2 = fmVar2.v;
            if (gezVar2 != null) {
                fmVar2.m(gezVar2);
            }
            fmVar2.x = r14;
            fmVar2.v = gezVar;
        } catch (Throwable th) {
            herVar.f19356c = false;
            throw th;
        }
    }

    @Override // androidx.fragment.app.Fragment
    public final void onActivityCreated(Bundle bundle) {
        String string;
        super.onActivityCreated(bundle);
        if (this.o == null) {
            if (bundle != null) {
                this.k = bundle.getInt("KEY_MODE", this.k);
                this.p = bundle.getBoolean("KEY_ALLOW_DIR_CREATE", this.p);
                this.x = bundle.getBoolean("KEY_ALLOW_MULTIPLE", this.x);
                this.h = bundle.getBoolean("KEY_ALLOW_EXISTING_FILE", this.h);
                this.f13566f = bundle.getBoolean("KEY_SINGLE_CLICK", this.f13566f);
                String string2 = bundle.getString("KEY_CURRENT_PATH");
                if (string2 != null) {
                    this.o = new File(string2.trim());
                }
            } else if (getArguments() != null) {
                this.k = getArguments().getInt("KEY_MODE", this.k);
                this.p = getArguments().getBoolean("KEY_ALLOW_DIR_CREATE", this.p);
                this.x = getArguments().getBoolean("KEY_ALLOW_MULTIPLE", this.x);
                this.h = getArguments().getBoolean("KEY_ALLOW_EXISTING_FILE", this.h);
                this.f13566f = getArguments().getBoolean("KEY_SINGLE_CLICK", this.f13566f);
                if (getArguments().containsKey("KEY_START_PATH") && (string = getArguments().getString("KEY_START_PATH")) != null) {
                    File file = new File(string.trim());
                    if (file.isDirectory()) {
                        this.o = file;
                    } else {
                        this.o = (file.getPath().equals(new File("/").getPath()) || file.getParentFile() == null) ? file : file.getParentFile();
                        this.m.setText(file.getName());
                    }
                }
            }
        }
        boolean z = this.k == 3;
        this.v.setVisibility(z ? 0 : 8);
        this.q.setVisibility(z ? 8 : 0);
        if (!z && this.f13566f) {
            getActivity().findViewById(R.id.nnf_button_ok).setVisibility(8);
        }
        if (this.o == null) {
            this.o = new File("/");
        }
        al(this.o, true);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // androidx.fragment.app.Fragment
    public final void onAttach(Context context) {
        super.onAttach(context);
        try {
            this.s = (gaf) context;
        } catch (ClassCastException unused) {
            throw new ClassCastException(context.toString() + " must implement OnFilePickedListener");
        }
    }

    @Override // androidx.fragment.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setHasOptionsMenu(true);
    }

    @Override // androidx.fragment.app.Fragment
    public final void onCreateOptionsMenu(Menu menu, MenuInflater menuInflater) {
        menuInflater.inflate(R.menu.picker_actions, menu);
        menu.findItem(R.id.nnf_action_createdir).setVisible(this.p);
    }

    @Override // androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        View inflate = layoutInflater.inflate(R.layout.nnf_fragment_filepicker, viewGroup, false);
        RecyclerView recyclerView = (RecyclerView) inflate.findViewById(android.R.id.list);
        this.l = recyclerView;
        recyclerView.setHasFixedSize(true);
        getActivity();
        LinearLayoutManager linearLayoutManager = new LinearLayoutManager(1);
        this.w = linearLayoutManager;
        this.l.setLayoutManager(linearLayoutManager);
        RecyclerView recyclerView2 = this.l;
        TypedArray obtainStyledAttributes = getActivity().obtainStyledAttributes(new int[]{R.attr.nnf_list_item_divider});
        Drawable drawable = obtainStyledAttributes.getDrawable(0);
        obtainStyledAttributes.recycle();
        if (drawable != null) {
            cnm cnmVar = new cnm();
            cnmVar.f13177b = drawable;
            recyclerView2.addItemDecoration(cnmVar);
        }
        bze bzeVar = new bze(this);
        this.j = bzeVar;
        this.l.setAdapter(bzeVar);
        inflate.findViewById(R.id.nnf_button_cancel).setOnClickListener(new bee(this, 0));
        inflate.findViewById(R.id.nnf_button_ok).setOnClickListener(new bee(this, 1));
        inflate.findViewById(R.id.nnf_button_ok_newfile).setOnClickListener(new bee(this, 2));
        this.v = inflate.findViewById(R.id.nnf_newfile_button_container);
        this.q = inflate.findViewById(R.id.nnf_button_container);
        EditText editText = (EditText) inflate.findViewById(R.id.nnf_text_filename);
        this.m = editText;
        editText.addTextChangedListener(new bvb(0, this));
        Object obj = this.o;
        if (obj != null) {
            ae(((File) obj).getPath());
        }
        return inflate;
    }

    @Override // androidx.fragment.app.Fragment
    public final void onDetach() {
        super.onDetach();
        this.s = null;
    }

    @Override // androidx.fragment.app.Fragment
    public boolean onOptionsItemSelected(MenuItem menuItem) {
        if (R.id.nnf_action_createdir != menuItem.getItemId()) {
            return false;
        }
        androidx.fragment.app.u activity = getActivity();
        if (!(activity instanceof ub)) {
            return true;
        }
        androidx.fragment.app.v supportFragmentManager = ((ub) activity).getSupportFragmentManager();
        bgr bgrVar = new bgr();
        bgrVar.f10032g = this;
        bgrVar.show(supportFragmentManager, "new_folder_fragment");
        return true;
    }

    @Override // androidx.fragment.app.Fragment
    public final void onSaveInstanceState(Bundle bundle) {
        bundle.putString("KEY_CURRENT_PATH", this.o.toString());
        bundle.putBoolean("KEY_ALLOW_MULTIPLE", this.x);
        bundle.putBoolean("KEY_ALLOW_EXISTING_FILE", this.h);
        bundle.putBoolean("KEY_ALLOW_DIR_CREATE", this.p);
        bundle.putBoolean("KEY_SINGLE_CLICK", this.f13566f);
        bundle.putInt("KEY_MODE", this.k);
        super.onSaveInstanceState(bundle);
    }

    public String y(Object obj) {
        File file = (File) obj;
        if (file.isDirectory()) {
            return null;
        }
        return buj.q(file.getPath(), false);
    }

    public boolean z(Object obj) {
        return true;
    }
}
