
{{ content() }}

<div align="right">
    {{ link_to("comments/new", "Create comments") }}
</div>

{{ form("comments/search", "method":"post", "autocomplete" : "off") }}

<div align="center">
    <h1>Search comments</h1>
</div>

<table>
    <tr>
        <td align="right">
            <label for="id">Id</label>
        </td>
        <td align="left">
            {{ text_field("id", "type" : "numeric") }}
        </td>
    </tr>
    <tr>
        <td align="right">
            <label for="post_id">Post</label>
        </td>
        <td align="left">
            {{ text_field("post_id", "type" : "numeric") }}
        </td>
    </tr>
    <tr>
        <td align="right">
            <label for="body">Body</label>
        </td>
        <td align="left">
                {{ text_field("body", "type" : "date") }}
        </td>
    </tr>
    <tr>
        <td align="right">
            <label for="name">Name</label>
        </td>
        <td align="left">
                {{ text_field("name", "type" : "date") }}
        </td>
    </tr>
    <tr>
        <td align="right">
            <label for="email">Email</label>
        </td>
        <td align="left">
                {{ text_field("email", "type" : "date") }}
        </td>
    </tr>
    <tr>
        <td align="right">
            <label for="url">Url</label>
        </td>
        <td align="left">
                {{ text_field("url", "type" : "date") }}
        </td>
    </tr>
    <tr>
        <td align="right">
            <label for="submitted">Submitted</label>
        </td>
        <td align="left">
            {{ text_field("submitted", "size" : 30) }}
        </td>
    </tr>
    <tr>
        <td align="right">
            <label for="publish">Publish</label>
        </td>
        <td align="left">
            {{ text_field("publish", "type" : "numeric") }}
        </td>
    </tr>
    <tr>
        <td align="right">
            <label for="posts_id">Posts</label>
        </td>
        <td align="left">
            {{ text_field("posts_id", "type" : "numeric") }}
        </td>
    </tr>

    <tr>
        <td></td>
        <td>{{ submit_button("Search") }}</td>
    </tr>
</table>

</form>