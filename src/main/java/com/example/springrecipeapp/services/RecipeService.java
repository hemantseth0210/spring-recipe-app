package com.example.springrecipeapp.services;

import com.example.springrecipeapp.commands.RecipeCommand;
import com.example.springrecipeapp.domain.Recipe;
import java.util.Set;

public interface RecipeService {
    Set<Recipe> getRecipes();
    Recipe findById(Long id);
    RecipeCommand saveRecipe(RecipeCommand command);
    RecipeCommand findCommandById(Long id);
    void deleteById(Long id);
}
