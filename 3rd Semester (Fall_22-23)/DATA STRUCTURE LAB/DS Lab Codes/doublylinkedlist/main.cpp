#include <bits/stdc++.h>
using namespace std;
struct node
{
    int info;
    struct node *next;
    struct node *prev;
}
*start, *last;
class double_list
{
    public:
        void create_list(int value);
        void add_begin(int value);
        void add_after(int value, int position);
        void add_last(int value);
        void delete_element(int value);
        void delete_first();
        void del_position(int position);
        void del_last();
        void search_element(int value);
        void display_dlist();
        void update();
        void display_reverse_dlist();
        void reverse();
        void sort();
        int count();
        node* search(int value);
        double_list()
        {
            start = NULL;
        }
};

int main()
{
    int choice, element, position;
    double_list dl;
    while (1)
    {
        cout<<endl<<"----------------------------"<<endl;
        cout<<endl<<"Operations on Doubly linked list"<<endl;
        cout<<endl<<"----------------------------"<<endl;
        cout<<"1.Create Node"<<endl;
        cout<<"2.Add At Beginning"<<endl;
        cout<<"3.Add After Position"<<endl;
        cout<<"4.Add At Last"<<endl;
        cout<<"5.Delete From Searching A Given Position"<<endl;
        cout<<"6.Delete From The first"<<endl;
        cout<<"7.Delete From After Position"<<endl;
        cout<<"8.Delete From The Last"<<endl;
        cout<<"9.Display"<<endl;
        cout<<"10.Count"<<endl;
        cout<<"11.Display In Reverse"<<endl;
        cout<<"12.Search"<<endl;
        cout<<"13.Update"<<endl;
        cout<<"14.Sort"<<endl;
        cout<<"15.Exit"<<endl;
        cout<<"Enter your choice : ";
        cin>>choice;
        switch ( choice )
        {
        case 1:
            cout<<"Enter the element: ";
            cin>>element;
            dl.create_list(element);
            cout<<endl;
            break;
        case 2:
            cout<<"Enter the element: ";
            cin>>element;
            dl.add_begin(element);
            cout<<endl;
            break;
        case 3:
            cout<<"Enter the element: ";
            cin>>element;
            cout<<"Insert Element after postion: ";
            cin>>position;
            dl.add_after(element, position);
            cout<<endl;
            break;
        case 4:
            cout<<"Enter the element: ";
            cin>>element;
            dl.add_last(element);
            cout<<endl;
            break;
        case 5:
            if (start == NULL)
            {
                cout<<"List empty,nothing to delete"<<endl;
                break;
            }
            cout<<"Enter the element for deletion: ";
            cin>>element;
            dl.delete_element(element);
            cout<<endl;
            break;
        case 6:
            dl.delete_first();
            cout<<endl;
            break;
        case 7:
            cout<<"Enter the postion: ";
            cin>>position;
            dl.del_position(position);
            cout<<endl;
            break;
        case 8:
            if (start == NULL)
            {
                cout<<"List empty,nothing to reverse"<<endl;
                break;
            }
            dl.del_last();
            cout<<endl;
            break;
        case 9:
            dl.display_dlist();
            cout<<endl;
            break;
        case 10:
            cout<<"Number of elements: "<<dl.count();
            break;
        case 11:
            dl.display_reverse_dlist();
            cout<<endl;
            break;
        case 12:
            cout<<"Enter the element that you want to search: ";
            cin>>element;
            dl.search(element);
            cout<<endl;
            break;
        case 13:
            dl.update();
            cout<<endl;
            break;
        case 14:
            dl.sort();
            cout<<endl;
            break;
        case 15:
            exit(1);
        default:
            cout<<"Wrong choice"<<endl;
        }
    }
    return 0;
}

void double_list::create_list(int value)
{
    struct node *s, *temp;
    temp = new(struct node);
    temp->info = value;
    temp->next = NULL;
    if (start == NULL)
    {
        temp->prev = NULL;
        start = temp;
    }
    else
    {
        s = start;
        while (s->next != NULL)
            s = s->next;
        s->next = temp;
        temp->prev = s;
    }
}

void double_list::add_begin(int value)
{
    if (start == NULL)
    {
        cout<<"First Create the list."<<endl;
        return;
    }
    struct node *temp;
    temp = new(struct node);
    temp->prev = NULL;
    temp->info = value;
    temp->next = start;
    start->prev = temp;
    start = temp;
    cout<<"Element Inserted"<<endl;
}

void double_list::add_after(int value, int pos)
{
    if (start == NULL)
    {
        cout<<"First Create the list."<<endl;
        return;
    }
    struct node *tmp, *q;
    int i;
    q = start;
    for (i = 0;i < pos - 1;i++)
    {
        q = q->next;
        if (q == NULL)
        {
            cout<<"There are less than ";
            cout<<pos<<" elements."<<endl;
            return;
        }
    }
    tmp = new(struct node);
    tmp->info = value;
    if (q->next == NULL)
    {
        q->next = tmp;
        tmp->next = NULL;
        tmp->prev = q;
    }
    else
    {
        tmp->next = q->next;
        tmp->next->prev = tmp;
        q->next = tmp;
        tmp->prev = q;
    }
    cout<<"Element Inserted"<<endl;
}

void double_list::add_last(int value)
{
    if (start == NULL)
    {
        cout<<"First Create the list."<<endl;
        return;
    }
    struct node *tmp, *q;
    int i;
    tmp = new node;
    tmp->info = value;

    q = start;
    while(q->next!=NULL)
    {
        q=q->next;
    }
    q->next=tmp;
    tmp->prev=q;
    tmp->next=NULL;
    cout<<"Element Inserted at the last position"<<endl;
}

void double_list::delete_element(int value)
{
    struct node *tmp, *q;
    if (start->info == value)
    {
        tmp = start;
        start = start->next;
        start->prev = NULL;
        cout<<"Element Deleted"<<endl;
        free(tmp);
        return;
    }
    q = start;
    while (q->next->next != NULL)
    {
        if (q->next->info == value)
        {
            tmp = q->next;
            q->next = tmp->next;
            tmp->next->prev = q;
            cout<<"Element Deleted"<<endl;
            free(tmp);
            return;
        }
        q = q->next;
    }
    if (q->next->info == value)
    {
        tmp = q->next;
        free(tmp);
        q->next = NULL;
        cout<<"Element Deleted"<<endl;
        return;
    }
    cout<<"Element "<<value<<" not found"<<endl;
}

void double_list::display_dlist()
{
    struct node *q;
    if (start == NULL)
    {
        cout<<"List empty,nothing to display"<<endl;
        return;
    }
    q = start;
    cout<<"The Doubly Link List is :"<<endl;
    while (q != NULL)
    {
        cout<<q->info<<" <-> ";
        q = q->next;
    }
    cout<<"NULL"<<endl;
}

int double_list::count()
{
    struct node *q = start;
    int cnt = 0;
    while (q != NULL)
    {
        q = q->next;
        cnt++;
    }
    return cnt;
}

void double_list::display_reverse_dlist()
{
    reverse();
    display_dlist();
    reverse();
}

void double_list::reverse()
{
    struct node *p1, *p2;
    p1 = start;
    p2 = p1->next;
    p1->next = NULL;
    p1->prev = p2;
    while (p2 != NULL)
    {
        p2->prev = p2->next;
        p2->next = p1;
        p1 = p2;
        p2 = p2->prev;
    }
    start = p1;
}

void double_list::update()
{
    int value1,value2;
    cout<<"Enter the value that you want to update: ";
    cin>>value1;
    struct node *tmp = new node;
    tmp = search(value1);
    cout<<"What is the updated value? ";
    cin>>value2;
    tmp->info = value2;

    cout<<"Value is updated."<<endl;
}

node* double_list::search(int value)
{
    struct node *q = start;
    int count =1;
    while (q != NULL)
    {
        if(q->info == value)
            break;
        q = q->next;
        count++;
    }
    if(q == NULL)
    {
        cout<<"Value is not in the list !!";
        return q;
    }
    else{
        cout<<"Value is found in the position: "<<count<<endl;
             return q;
             }
}

void double_list::delete_first()
{
    struct node *tmp;
    tmp=start;
    start = start->next;
    start->prev = NULL;
    free(tmp);
    cout<<"First node is deleted.";

}

void double_list::del_position(int pos)
{
    if (start == NULL)
    {
        cout<<"Linked list is empty, There is nothing to delete."<<endl;
        return;
    }
    struct node *tmp, *q;
    int i;
    q = start;
    for (i = 1;i < pos;i++)
    {
        q = q->next;
        if (q == NULL)
        {
            cout<<"There are less than ";
            cout<<pos<<" elements."<<endl;
            return;
        }
    }

    if (q->next == NULL)
    {
        (q->prev)->next = NULL;
        free(q);
        cout<<"Element deleted.";
        return;
    }
    else
    {
        (q->next)->prev = q->prev;
        (q->prev)->next = q->next;
        free(q);
        cout<<"Element deleted.";
    }
}

void double_list::del_last()
{
    struct node *q;
    int i;

    q = start;
    while(q->next!=NULL)
    {
        q=q->next;
    }
    last = q->prev;
    (q->prev)->next = NULL;
    free(q);
    cout<<"Element deleted."<<endl;
}

void double_list::sort()
{
    struct node *temp, *s;
    int value, i;
    if (start == last && start == NULL)
    {
        cout<<"The List is empty, nothing to sort"<<endl;
        return;
    }
    s = start;
    for (i = 0;i < count();i++)
    {
        temp = s->next;
        while (temp != NULL)
        {
            if (s->info > temp->info)
            {
                value = s->info;
                s->info = temp->info;
                temp->info = value;
            }
            temp = temp->next;
        }
        s = s->next;
    }
    cout<<"Linked list is sorted.";
}
