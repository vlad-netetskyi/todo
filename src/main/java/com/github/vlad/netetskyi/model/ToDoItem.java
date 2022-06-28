package com.github.vlad.netetskyi.model;

import java.time.Instant;

public record ToDoItem(String title, String description, Instant createdAt, boolean completed) {

}
